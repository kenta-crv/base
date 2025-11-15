module ApplicationHelper
  def default_meta_tags
    {
      site: "テレアポ代行で最高峰リストに架電！完全成果報酬の『アポ匠』",
      description: "テレアポ代行を成果報酬で考えているなら『アポ匠』！ITプログラミングスキルを活用したリストの精度は非常に評判がよく、高いアポ率をお約束します。",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],

    }
  end

end
