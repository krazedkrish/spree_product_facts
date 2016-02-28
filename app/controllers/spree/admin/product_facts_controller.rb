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
    unless update_product_fact_attribute["facts"].nil? && update_product_fact_attribute["title"].nil?
      product_fact.update update_product_fact_attribute
    else
      product_fact_translations_attribute = update_product_fact_attribute["translations_attributes"]
      product_fact_translations=product_fact_translations_attribute.map do |k,v|
        v.slice("locale", "title", "facts")
      end
      product_fact_translations.each { |pf| product_fact.attributes=pf }
      product_fact.save
    end
    redirect_to spree.admin_product_facts_path
  end

  private
  def update_product_fact_attribute
    params.require(:product_fact).permit(permitted_params)
  end

  def permitted_params
    [ :title, :facts, product_ids: [], translations_attributes: [:id, :locale, :title, :facts, :product_ids]]
  end

end
