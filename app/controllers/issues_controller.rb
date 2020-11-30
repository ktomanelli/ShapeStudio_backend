class IssuesController < ApplicationController
    def create
        url='https://api.github.com/repos/ktomanelli/ShapeStudio_frontend/issues'
        headers={
            "Content_Type"=> "application/json", 
            "accept" => "application/vnd.github.v3+json",
            "Authorization"=>ENV['GH_TOKEN']
        }
        payload={
            "title"=>params["title"],
            "body"=>params["body"],
        }.to_json
        begin
            res=RestClient.post url,payload,headers
            if(res)
                results = JSON.parse(res.to_s)
                issue = Issue.create(user_id:@user.id,issue_id:results['number'])
                if(issue.valid?)
                    render json: { status:200 }
                else
                    raise StandardError.new("Unable to create issue. Please try again or email kyle@shape.studio")
                end
            end
        rescue=>e
            render json: {error:e}
        end

    end
end
