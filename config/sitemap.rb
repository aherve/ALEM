# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.alem-paname.com"
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
#SitemapGenerator::Sitemap.sitemaps_host = ENV['SITEMAP_HOST']
#SitemapGenerator::Sitemap.public_path = 'tmp/'
#SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  # Add '/newss'
  
     add news_index_path, :priority => 0.7, :changefreq => 'weekly'
  
  # Add all newss:
  
     News.all.each do |news|
       add news_path(news), :lastmod => news.updated_at
     end
end
