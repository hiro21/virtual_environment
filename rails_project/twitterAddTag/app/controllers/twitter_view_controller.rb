class TwitterViewController < ApplicationController
  def index
	 tmpVals = params[:accountName] 
         @accountName = tmpVals['accountName']
	 puts @accountName
  end
end
