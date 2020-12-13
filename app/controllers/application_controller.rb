class ApplicationController < ActionController::Base
  # refileエラー解消のため記載
  Refile.secret_key = 'b3a334a72f0add691c01d458757b60c809eded0eb584d5c560766274929b5393fd5b6b
  52689ea9af28c8422612ad5295c03a86504bf49d80e4b93d07421ba30e'

  protected

  # ログイン後遷移ページの指定(devise由来)
  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end
