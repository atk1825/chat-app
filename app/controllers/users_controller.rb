class UsersController < ApplicationController
  
  def edit
  end

  def update
    #今のユーザー情報（user_params）をアップデートする。
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    #paramsのユーザーテーブルのnameカラムとemailカラム
    params.require(:user).permit(:name, :email)
  end

end
