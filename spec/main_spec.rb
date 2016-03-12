require 'webrick'
require 'green_onion'
require 'capybara/rspec'
require 'rspec'
require 'spec_helper'

describe 'site pages' do

  before(:all) do
    start_server_thread
    create_screenshots
  end

  after(:all) do
    exit_server_thread
  end

  before(:each) do
    @comparison = GreenOnion::Compare.new
    @tolerance = 0.5
  end

  it 'bear page should match the solution' do
    solution = './spec/skins/bear.html.png'
    student = './spec/skins/bear.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'ostrich page should match the solution' do
    solution = './spec/skins/ostrich.html.png'
    student = './spec/skins/ostrich.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'monkey page should match the solution' do
    solution = './spec/skins/monkey.html.png'
    student = './spec/skins/monkey.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'dolphin page should match the solution' do
    solution = './spec/skins/dolphin.html.png'
    student = './spec/skins/dolphin.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end
  
end