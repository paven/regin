require "helper"

class ExampleTest < JekyllUnitTest
  should "render a div" do
    # 1. Write your markup
    html = %Q[
      <div class="aww">
        Yiss
      </div>
    ]

    # 2. Pass it into Joule for rendering
    @joule.render(html)

    # 3. Find your HTML element(s)
    el = @joule.find(".aww")

    # 4. Write tests
    assert(el)
    assert(el.text.include?("Yiss"))
    assert(el["class"].include?("aww"))
  end

  should "render an include html file" do
    html = %Q[
      <div class="hello">
        {% include test.html %}
        Hello
      </div>
    ]
    @joule.render(html)
    el = @joule.css(".tests")[0]

    assert(el)
    assert(el["class"].include?("include"))
  end

end
