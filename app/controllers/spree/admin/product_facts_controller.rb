class Spree::Admin::ProductFactsController < Spree::Admin::ResourceController

  def new
    @product_fact = Spree::ProductFact.new
    @products = Spree::Product.all
  end

  def edit
    @product_fact = Spree::ProductFact.find(params[:id])
    @products = Spree::Product.all
  end


  def update
    product_fact = Spree::ProductFact.find(params[:id])
    product_fact_translations_attribute = update_product_fact_attribute["translations_attributes"]
    product_fact_translations_attribute.map do |k,v|
      v.slice("locale","facts")
    end
    product_fact_translations_attribute.each { |pf| product_fact.attributes=pf }
    product_fact_translations_attribute.save
    redirect_to spree.admin_product_facts_path
  end

  private
  def update_product_fact_attribute_test
    params.require(:product_fact).permit(permitted_params)
  end

  def permitted_params_test
    [translation: [:id, :locale, :facts]]
  end

  def update_product_fact_attribute
    params.require(:product_fact).permit(permitted_params)
  end

  def permitted_params
    [translations_attributes: [:id, :locale, :facts]]
  end

end
