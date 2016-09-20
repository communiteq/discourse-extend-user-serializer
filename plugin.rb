# name: discourse-extend-user-serializer
# about: Adds the groups to the user serializer
# version: 0.1
# author: DiscourseHosting
# url: https://www.github.com/discoursehosting/discourse-extend-user-serializer


after_initialize do

  require_dependency 'current_user_serializer'
  class ::CurrentUserSerializer
    attributes :groups

    def groups
      object.groups.pluck(:name)
    end


  end


end
