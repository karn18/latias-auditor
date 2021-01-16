Rails.application.routes.draw do
  get 'pages/index'
  mount Latias::Auditor::Engine => "/latias-auditor"
end
