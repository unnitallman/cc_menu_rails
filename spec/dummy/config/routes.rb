Rails.application.routes.draw do
  mount CcMenu::Engine => "/cc.xml"
end
