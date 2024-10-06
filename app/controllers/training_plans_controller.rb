class TrainingPlansController < AuthenticatedController
  before_action :set_training_plan, only: %i[ show edit update destroy ]

  # GET /training_plans or /training_plans.json
  def index
    @training_plans = TrainingPlan.all
  end

  # GET /training_plans/1 or /training_plans/1.json
  def show
  end

  # GET /training_plans/new
  def new
    @training_plan = TrainingPlan.new
  end

  # GET /training_plans/1/edit
  def edit
  end

  # POST /training_plans or /training_plans.json
  def create
    @training_plan = TrainingPlan.new(training_plan_params)

    respond_to do |format|
      if @training_plan.save
        format.html { redirect_to @training_plan, notice: "Training plan was successfully created." }
        format.json { render :show, status: :created, location: @training_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @training_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_plans/1 or /training_plans/1.json
  def update
    respond_to do |format|
      if @training_plan.update(training_plan_params)
        format.html { redirect_to @training_plan, notice: "Training plan was successfully updated." }
        format.json { render :show, status: :ok, location: @training_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @training_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_plans/1 or /training_plans/1.json
  def destroy
    @training_plan.destroy!

    respond_to do |format|
      format.html { redirect_to training_plans_path, status: :see_other, notice: "Training plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_plan
      @training_plan = TrainingPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def training_plan_params
      params.fetch(:training_plan, {})
    end
end
