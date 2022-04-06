module Fastlane
  module Actions
    class GetSpecNameAction < Action
      def self.run(params)
          file_path = Dir.pwd
          Actions.sh "echo #{file_path}"
          Dir.foreach(file_path) do |file|  
            if file.include?(".podspec")
                return File.basename(file,".podspec")
            end  
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Auto get podspec name."
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["jinfeng"]
      end

      def self.is_supported?(platform)
        true
      end

      def self.return_type
        :string
      end
    end
  end
end
