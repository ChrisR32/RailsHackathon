# Wallet Routes

## Expense Model

| Prefix       | Verb   | URI Pattern                  | Controller#Action |
| :----------- | ------ | :--------------------------- | ----------------- |
| expenses     | GET    | /expenses(.:format)          | expenses#index    |
|              | POST   | /expenses(.:format)          | expenses#create   |
| new_expense  | GET    | /expenses/new(.:format)      | expenses#new      |
| edit_expense | GET    | /expenses/:id/edit(.:format) | expenses#edit     |
| expense      | GET    | /expenses/:id(.:format)      | expenses#show     |
|              | PATCH  | /expenses/:id(.:format)      | expenses#update   |
|              | PUT    | /expenses/:id(.:format)      | expenses#update   |
|              | DELETE | /expenses/:id(.:format)      | expenses#destroy  |

## Expense Occurence Model

| Prefix                           | Verb   | URI Pattern                                                 | Controller#Action          |
| :------------------------------- | ------ | :---------------------------------------------------------- | -------------------------- |
| expense_expense_occurrence_index | GET    | /expenses/:expense_id/expense_occurrence(.:format)          | expense_occurrence#index   |
|                                  | POST   | /expenses/:expense_id/expense_occurrence(.:format)          | expense_occurrence#create  |
| new_expense_expense_occurrence   | GET    | /expenses/:expense_id/expense_occurrence/new(.:format)      | expense_occurrence#new     |
| edit_expense_expense_occurrence  | GET    | /expenses/:expense_id/expense_occurrence/:id/edit(.:format) | expense_occurrence#edit    |
| expense_expense_occurrence       | GET    | /expenses/:expense_id/expense_occurrence/:id(.:format)      | expense_occurrence#show    |
|                                  | PATCH  | /expenses/:expense_id/expense_occurrence/:id(.:format)      | expense_occurrence#update  |
|                                  | PUT    | /expenses/:expense_id/expense_occurrence/:id(.:format)      | expense_occurrence#update  |
|                                  | DELETE | /expenses/:expense_id/expense_occurrence/:id(.:format)      | expense_occurrence#destroy |

## Payments Model

| Prefix       | Verb   | URI Pattern                  | Controller#Action |
| :----------- | ------ | :--------------------------- | ----------------- |
| payments     | GET    | /payments(.:format)          | payments#index    |
|              | POST   | /payments(.:format)          | payments#create   |
| new_payment  | GET    | /payments/new(.:format)      | payments#new      |
| edit_payment | GET    | /payments/:id/edit(.:format) | payments#edit     |
| payment      | GET    | /payments/:id(.:format)      | payments#show     |
|              | PATCH  | /payments/:id(.:format)      | payments#update   |
|              | PUT    | /payments/:id(.:format)      | payments#update   |
|              | DELETE | /payments/:id(.:format)      | payments#destroy  |

## Pay Expenses Model

| Prefix           | Verb   | URI Pattern                      | Controller#Action    |
| :--------------- | ------ | :------------------------------- | -------------------- |
| pay_expenses     | GET    | /pay_expenses(.:format)          | pay_expenses#index   |
|                  | POST   | /pay_expenses(.:format)          | pay_expenses#create  |
| new_pay_expense  | GET    | /pay_expenses/new(.:format)      | pay_expenses#new     |
| edit_pay_expense | GET    | /pay_expenses/:id/edit(.:format) | pay_expenses#edit    |
| pay_expense      | GET    | /pay_expenses/:id(.:format)      | pay_expenses#show    |
|                  | PATCH  | /pay_expenses/:id(.:format)      | pay_expenses#update  |
|                  | PUT    | /pay_expenses/:id(.:format)      | pay_expenses#update  |
|                  | DELETE | /pay_expenses/:id(.:format)      | pay_expenses#destroy |

## AWS S3 Bucket

| Prefix                    | Verb | URI Pattern                                                                              | Controller#Action                   |
| :------------------------ | ---- | :--------------------------------------------------------------------------------------- | ----------------------------------- |
| rails_service_blob        | GET  | /rails/active_storage/blobs/:signed_id/*filename(.:format)                               | active_storage/blobs#show           |
| rails_blob_representation | GET  | /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) | active_storage/representations#show |
| rails_disk_service        | GET  | /rails/active_storage/disk/:encoded_key/*filename(.:format)                              | active_storage/disk#show            |
| update_rails_disk_service | PUT  | /rails/active_storage/disk/:encoded_token(.:format)                                      | active_storage/disk#update          |
| rails_direct_uploads      | POST | /rails/active_storage/direct_uploads(.:format)                                           | active_storagedirect_uploads#create |

## Devise

| Prefix                   | Verb   | URI Pattern                    | Controller#Action            |
| :----------------------- | ------ | :----------------------------- | ---------------------------- |
| pages_home               | GET    | /pages/h                       | ome(.:format)                | pages#home |
| new_user_session         | GET    | /users/sign_in(.:format)       | devise/sessions#new          |
| user_session             | POST   | /users/sign_in(.:format)       | devise/sessions#create       |
| destroy_user_session     | DELETE | /users/sign_out(.:format)      | devise/sessions#destroy      |
| new_user_password        | GET    | /users/password/new(.:format)  | devise/passwords#new         |
| edit_user_password       | GET    | /users/password/edit(.:format) | devise/passwords#edit        |
| user_password            | PATCH  | /users/password(.:format)      | devise/passwords#update      |
|                          | PUT    | /users/password(.:format)      | devise/passwords#update      |
|                          | POST   | /users/password(.:format)      | devise/passwords#create      |
| cancel_user_registration | GET    | /users/cancel(.:format)        | devise/registrations#cancel  |
| new_user_registration    | GET    | /users/sign_up(.:format)       | devise/registrations#new     |
| edit_user_registration   | GET    | /users/edit(.:format)          | devise/registrations#edit    |
| user_registration        | PATCH  | /users(.:format)               | devise/registrations#update  |
|                          | PUT    | /users(.:format)               | devise/registrations#update  |
|                          | DELETE | /users(.:format)               | devise/registrations#destroy |
|                          | POST   | /users(.:format)               | devise/registrations#create  |
| root                     | GET    | /                              | pages#home                   |
