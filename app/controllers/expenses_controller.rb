class ExpensesController < ApplicationController
  before_filter :set_expense, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @expenses = Expense.all
    respond_with(@expenses)
  end

  def show
    respond_with(@expense)
  end

  def new
    @expense = Expense.new
    respond_with(@expense)
  end

  def edit
  end

  def create
    @expense = Expense.new(params[:expense])
    @expense.save
    respond_with(@expense)
  end

  def update
    @expense.update_attributes(params[:expense])
    respond_with(@expense)
  end

  def destroy
    @expense.destroy
    respond_with(@expense)
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end
end
