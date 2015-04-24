Spree::Ability.register_ability(RetailAbility)
Spree::PermittedAttributes.product_attributes << :retail_only
Spree::Role.find_or_create_by(name: 'retail')