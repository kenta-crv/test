module ApplicationHelper

  def default_meta_tags
    {
    	title:"<%= yield(:title) || '業界最安値に挑戦！記帳代行なら記帳代行サポート.jp' %>",
    	description: "業界最安値の記帳代行会社を探すなら記帳代行サポート,jp。最安値の一律7000円で承るため、余分な月額コストと事務費用を圧倒的に削減出来ます！",
    	keywords: "記帳代行, 記帳代行 格安",
        canonical: request.original_url,  # 優先されるurl
        charset: "UTF-8"
    }
  end

end
