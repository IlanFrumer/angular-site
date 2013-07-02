current_folder = Dir.pwd
concat_folder = "app/coffee"

Dir.chdir(concat_folder)

concat_files  = Dir["*/*.coffee"].map {|e| e.gsub(/\.coffee$/, "")}
concat_files << 'main'

Dir.chdir(current_folder)

guard :concat, type: "coffee", files: concat_files ,input_dir: concat_folder , output: "temp/all"


guard 'coffeescript', :input => 'temp' , :output => 'temp'

guard 'uglify', :destination_file => "public/js/all.js" do
  watch (%r{temp/all.js})
end

guard 'compass' do
      watch(/^app\/sass\/(.*).sass/)
end

notification :off