module Helper

    def take_screenshot(file_name, result)
       path_file = "reports/screenshots/test_#{result}"
       photo = "#{path_file}/#{file_name}.png"
       page.save_screenshot(photo)
       embed(photo, 'image/png', 'Click here')  
    end
end