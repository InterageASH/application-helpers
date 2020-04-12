
# Interage::Helper

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interage-helper', '~> 0.1.2'
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
<p><%= link_to_edit edit_user_path(user) %></p>
<p><%= link_to_back :back %></p>
<p><%= link_to_show user_path(user) %></p>
<p><%= link_to_destroy user_path(user) %></p>
<p><%= link_to_new User, users_path %></p>
```

#### Interage::ApplicationIconHelper

```erb
<p><%= app_icon('user', class: 'text-muted') %></p>
<p><%= app_icon_text('users', 'Usuários', class: 'text-muted') %></p>
```

#### Interage::FontAwesomeHelper

```erb
<p><%= fa_icon('user', class: 'text-muted') %></p>
<p><%= fa_icon_text('users', 'Usuários', class: 'text-muted') %></p>
```

#### Interage::MaterialDesignIconsHelper

```erb
<p><%= md_icon('user', class: 'text-muted') %></p>
<p><%= md_icon_text('users', 'Usuários', class: 'text-muted') %></p>
```

#### Interage::VersionHelper

```erb
<p><%= app_version %></p>
<p><%= app_text_version %></p>
```

#### Interage::TranslationHelper

```erb
<p><%= tm(User) %></p>
<p><%= tmp(User) %></p>
<p><%= ta(User, :name) %></p>
<p><%= tb(false) %></p>
<p><%= tb(true) %></p>
<p><%= tbi(false) %></p>
<p><%= tbi(true) %></p>
<p><%= tbci(false) %></p>
<p><%= tbci(true) %></p>
```

#### Interage::TextHelper

```erb
<p><%= nl2br("Hello\nWorld") %></p>
```

#### Interage::PhoneHelper

```erb
<p><%= format_phone('81999599805') %></p>
```

#### Interage::PaginationHelper

```erb
<p><%= pagination_links(@users) %></p>
```

#### Interage::NumberHelper

```erb
<p><%= default_currency_format(10_000) %></p>
```

#### Interage::GravatarHelper

```erb
<p><%= gravatar_image_tag('developer@interage.in') %></p>
```

#### Interage::ControllerActiveHelper

```erb
<p><%= menu_active('home') %></p>
<p><%= current_controller?('home') %></p>
```

#### Interage::CEPHelper

```erb
<p><%= format_cep('54754195') %></p>
```

#### Interage::CPFCNPJHelper

```erb
<p><%= format_cnpj('00000000000100') %></p>
<p><%= format_cpf('05488608400') %></p>
```

#### Interage::ApplicationHelper

```erb
<p><%= format_seconds(20) %></p>
<p><%= app_page_title('adsdasdasd ') %></p>
<p><%= admin_page_title %></p>
<p><%= devise_page_title %></p>
<p><%= page_title %></p>
<p><%= app_name %></p>
<p><%= env_name_upcase %></p>
```

#### Interage::BootstrapHelper

```erb
<%= bootstrap_alert('users', '') %>
<%= bootstrap_alert_default('users') %>
<%= bootstrap_alert_info('users') %>
<%= bootstrap_alert_warning('users') %>
<%= bootstrap_alert_success('users') %>
<%= bootstrap_alert_danger('users') %>
<%= bootstrap_alert_not_found_male(User) %>
<%= bootstrap_alert_not_found_female(User) %>
<p><%= text_not_found_male(User) %></p>
<p><%= text_not_found_female(User) %></p>
```

## Contributing

Bug reports and merge requests are welcome on GitLab at https://gitlab.com/[USERNAME]/interage-helper.
