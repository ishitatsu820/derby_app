class ApplicationController < ActionController::Base
    def hello
      render html: "hello, world! I'm TEARAKOYA DERBY APP"
    end
    
    include SessionsHelper
end
