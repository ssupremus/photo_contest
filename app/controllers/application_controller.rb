class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]

    # I18n.available_locales
  end
end
