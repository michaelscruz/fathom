module TestHelpers
  module AssociationsTestHelper

    def assert_association_of_type(asserted_type, relation)
      assert(
        relation.is_a?(ActiveRecord::Associations::CollectionProxy),
        "expected #{relation} to be an ActiveRecord::Associations::CollectionProxy object, but it was a #{relation.class.name}"
      )
      assert_equal(
        asserted_type,
        relation.proxy_association.klass,
        "expected #{relation} to be a relation of #{asserted_type.name} objects, but it is a relation of #{relation.proxy_association.klass} objects"
      )
    end
  end
end
