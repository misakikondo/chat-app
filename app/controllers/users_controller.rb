class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      # もしカレントidのアップデートがプライヴェートメソッドも通過して更新できたら
      redirect_to root_path
      # ルートパスへいく
    else
      render :edit
      # それ以外はユーザー情報編集画面へいく
    end
  end


private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
