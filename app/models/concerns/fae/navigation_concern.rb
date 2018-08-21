module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    # define the navigation structure in this file
    # example structure:
    #
    # def structure
    #   [
    #     item('Top Nav Item 1', subitems: [
    #       item('Top Nav Dropdown Item 1', class: 'custom-class', path: some_named_route_path),
    #       item('Top Nav Dropdown Item 2', subitems: [
    #         item('Side Nav Item 1', subitems: [
    #           item('Side Nav Nested Item', path: some_named_route_path)
    #         ]),
    #         item('Side Nav Item 1', path: some_named_route_path)
    #       ]),
    #     ]),
    #     item('Pages', subitems: [
    #       item('Home', path: fae.edit_content_block_path('home')),
    #       item('About Us', path: fae.edit_content_block_path('about_us'))
    #     ])
    #   ]
    # end

    def structure
      [
        item('Manage', subitems: [
          item('Clients', path: admin_clients_path),
          item('Discounts', path: admin_discounts_path),
          item('Suppliers', path: admin_suppliers_path),
          item('Services', path: admin_services_path),
          item('Products', path: admin_products_path),
          item('Sells', path: admin_sells_path),
        ]),
        item('Marketing', subitems: [
          item('Campaigns', path: admin_campaigns_path)
        ]),
        item('+ Sell', path: '/admin/sells/new')
      ]
    end
  end
end
