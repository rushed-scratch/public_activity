# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'public_activity/version'

Gem::Specification.new do |s|
  s.name = 'public_activity'
  s.version = PublicActivity::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Piotrek Okoński", "Kuba Okoński"]
  s.email = "piotrek@okonski.org"
  s.homepage = 'https://github.com/pokonski/public_activity'
  s.summary = "Easy activity tracking for ActiveRecord models"
  s.description = "Easy activity tracking for your ActiveRecord models. Provides Activity model with details about actions performed by your users, like adding comments, responding etc."

  s.files = `git ls-files lib`.split("\n") + ['Gemfile','Rakefile','README.md', 'MIT-LICENSE', 'UPGRADING']
  s.test_files = `git ls-files spec`.split("\n")
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.2'

  if File.exists?('UPGRADING')
    s.post_install_message = File.read("UPGRADING")
  end

  s.add_dependency 'activesupport', '> 3.0'
  s.add_dependency 'actionpack', '> 3.0'
  s.add_dependency 'i18n', '>= 0.5.0'
  s.add_dependency 'railties', '> 3.0'
end
