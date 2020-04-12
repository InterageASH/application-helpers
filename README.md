
# Interage::Helper

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interage-helper', '~> 0.1.4'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install interage-helper
```

## Usage

You can use a Rails generator to create `ApplicationHelper` and add locales file:

```bash
rails g interage:helper:install
```

If you want to overwrite some variables:

```env
### APPLICATION HELPER
## Interage::ApplicationHelper
#
APP_NAME='Nome da Aplicação'
ENV_NAME='development'
PREFIX_ADMIN_PAGE_TITLE='Administração :: '
PREFIX_DEVISE_PAGE_TITLE='Autenticação :: '

## Interage::ApplicationIconHelper
#
# Use 'fa' or 'md'
DEFAULT_FONT_ICON='fa'

## Interage::CocoonHelper
#
DEFAULT_COCOON_BTN_CLASS='btn btn-sm btn-outline-'

## Interage::ControllerActiveHelper
#
CONTROLLER_SHOW_CLASS='show'
CONTROLLER_ACTIVE_CLASS='active'

## Interage::FaviconHelper
#
FAVICON_EXTENTION='png'
FAVICON_FILE_NAME='icons/apple-touch-icon'
```

## Finally ... Some examples:

#### Interage::LinkToHelper

```erb
<%= link_to_edit edit_user_path(user) %>
<%= link_to_back :back %>
<%= link_to_show user_path(user) %>
<%= link_to_destroy user_path(user) %>
<%= link_to_new User, users_path %>
```

#### Interage::ApplicationIconHelper

```erb
<%= app_icon('user', class: 'text-muted') %>
<%= app_icon_text('users', 'Usuários', class: 'text-muted') %>
```

#### Interage::FontAwesomeHelper

```erb
<%= fa_icon('user', class: 'text-muted') %>
<%= fa_icon_text('users', 'Usuários', class: 'text-muted') %>
```

#### Interage::MaterialDesignIconsHelper

```erb
<%= md_icon('user', class: 'text-muted') %>
<%= md_icon_text('users', 'Usuários', class: 'text-muted') %>
```

#### Interage::VersionHelper

```erb
<%= app_version %>
<%= app_text_version %>
```

#### Interage::TranslationHelper

```erb
<%= tm(User) %>
<%= tmp(User) %>
<%= ta(User, :name) %>
<%= tb(false) %>
<%= tb(true) %>
<%= tbi(false) %>
<%= tbi(true) %>
<%= tbci(false) %>
<%= tbci(true) %>
```

#### Interage::TextHelper

```erb
<%= nl2br("Hello\nWorld") %>
```

#### Interage::PhoneHelper

```erb
<%= format_phone('+5581987654321') %>
<%= format_phone('5581987654321') %>
<%= format_phone('081987654321') %>
<%= format_phone('81987654321') %>
<%= format_phone('8187654321') %>
<%= format_phone('987654321') %>
<%= format_phone('98765432') %>
```

#### Interage::PaginationHelper

```erb
<%= pagination_links(@users) %>
```

#### Interage::NumberHelper

```erb
<%= default_currency_format(10.57) %>
<%= default_currency_format(100.17) %>
<%= default_currency_format(1_000) %>
<%= default_currency_format(10_000) %>
<%= default_currency_format(1_000_000) %>
```

#### Interage::GravatarHelper

```erb
<%= gravatar_image_tag(user.email) %>
```

#### Interage::ControllerActiveHelper

```erb
<%= current_controller?('home') %>
<%= current_controller?('docs') %>
<%= menu_class_show('docs') %>
<%= menu_active('docs') %>
<%= current_controller?('home', 'docs') %>
<%= menu_class_show('home', 'docs') %>
<%= menu_active('home', 'docs') %>
```

#### Interage::CEPHelper

```erb
<%= format_cep('54754-195') %>
<%= format_cep('54754195') %>
```

#### Interage::CNPJHelper

```erb
<%= format_cnpj('08.475.876/0001-04') %>
<%= format_cnpj('08475876000104') %>
```

#### Interage::CPFHelper

```erb
<%= format_cpf('320.871.430-05') %>
<%= format_cpf('32087143005') %>
```

#### Interage::ApplicationHelper

```erb
<%= format_seconds(20) %>
<%= admin_page_title %>
<%= devise_page_title %>
<%= page_title %>
<%= app_name %>
<%= env_name_upcase %>
```

#### Interage::BootstrapHelper

```erb
<%= bootstrap_alert_info('Info message') %>
<%= bootstrap_alert_warning('Warning message') %>
<%= bootstrap_alert_success('Success message') %>
<%= bootstrap_alert_danger('Danger message') %>
<%= bootstrap_alert_not_found_male(User) %>
<%= bootstrap_alert_not_found_female(User) %>
<%= text_not_found_male(User) %>
<%= text_not_found_female(User) %>
```

## Contributing

Bug reports and merge requests are welcome on GitLab at https://gitlab.com/[USERNAME]/interage-helper.
