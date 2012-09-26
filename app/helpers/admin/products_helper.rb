module Admin::ProductsHelper
  
  def product_select(asset, products)
    product_options = products.map{|u| [u.name, u.id]}
    select(asset, :product_id, product_options,
           { :include_blank => t(:unassigned) },
           { :style         => "width:160px"  })
  end

  
end
