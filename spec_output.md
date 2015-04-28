/Users/jarrod/.rbenv/versions/2.2.2/bin/ruby -I/Users/jarrod/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/rspec-support-3.2.2/lib:/Users/jarrod/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/rspec-core-3.2.3/lib /Users/jarrod/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/rspec-core-3.2.3/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb <title>RSpec results</title> <meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta http-equiv="Expires" content="-1"><meta http-equiv="Pragma" content="no-cache"><style type="text/css">body { margin: 0; padding: 0; background: #fff; font-size: 80%; } </style><script type="text/javascript">// <![CDATA[ function addClass(element_id, classname) { document.getElementById(element_id).className += (" " + classname); } function removeClass(element_id, classname) { var elem = document.getElementById(element_id); var classlist = elem.className.replace(classname,''); elem.className = classlist; } function moveProgressBar(percentDone) { document.getElementById("rspec-header").style.width = percentDone +"%"; } function makeRed(element_id) { removeClass(element_id, 'passed'); removeClass(element_id, 'not_implemented'); addClass(element_id,'failed'); } function makeYellow(element_id) { var elem = document.getElementById(element_id); if (elem.className.indexOf("failed") == -1) { // class doesn't includes failed if (elem.className.indexOf("not_implemented") == -1) { // class doesn't include not_implemented removeClass(element_id, 'passed'); addClass(element_id,'not_implemented'); } } } function apply_filters() { var passed_filter = document.getElementById('passed_checkbox').checked; var failed_filter = document.getElementById('failed_checkbox').checked; var pending_filter = document.getElementById('pending_checkbox').checked; assign_display_style("example passed", passed_filter); assign_display_style("example failed", failed_filter); assign_display_style("example not_implemented", pending_filter); assign_display_style_for_group("example_group passed", passed_filter); assign_display_style_for_group("example_group not_implemented", pending_filter, pending_filter || passed_filter); assign_display_style_for_group("example_group failed", failed_filter, failed_filter || pending_filter || passed_filter); } function get_display_style(display_flag) { var style_mode = 'none'; if (display_flag == true) { style_mode = 'block'; } return style_mode; } function assign_display_style(classname, display_flag) { var style_mode = get_display_style(display_flag); var elems = document.getElementsByClassName(classname) for (var i=0; i<elems.length;i++) { elems[i].style.display = style_mode; } } function assign_display_style_for_group(classname, display_flag, subgroup_flag) { var display_style_mode = get_display_style(display_flag); var subgroup_style_mode = get_display_style(subgroup_flag); var elems = document.getElementsByClassName(classname) for (var i=0; i<elems.length;i++) { var style_mode = display_style_mode; if ((display_flag != subgroup_flag) && (elems[i].getElementsByTagName('dt')[0].innerHTML.indexOf(", ") != -1)) { elems[i].style.display = subgroup_style_mode; } else { elems[i].style.display = display_style_mode; } } } // ]]> </script><style type="text/css">#rspec-header { background: #65C400; color: #fff; height: 4em; } .rspec-report h1 { margin: 0px 10px 0px 10px; padding: 10px; font-family: "Lucida Grande", Helvetica, sans-serif; font-size: 1.8em; position: absolute; } #label { float:left; } #display-filters { float:left; padding: 28px 0 0 40%; font-family: "Lucida Grande", Helvetica, sans-serif; } #summary { float:right; padding: 5px 10px; font-family: "Lucida Grande", Helvetica, sans-serif; text-align: right; } #summary p { margin: 0 0 0 2px; } #summary #totals { font-size: 1.2em; } .example_group { margin: 0 10px 5px; background: #fff; } dl { margin: 0; padding: 0 0 5px; font: normal 11px "Lucida Grande", Helvetica, sans-serif; } dt { padding: 3px; background: #65C400; color: #fff; font-weight: bold; } dd { margin: 5px 0 5px 5px; padding: 3px 3px 3px 18px; } dd .duration { padding-left: 5px; text-align: right; right: 0px; float:right; } dd.example.passed { border-left: 5px solid #65C400; border-bottom: 1px solid #65C400; background: #DBFFB4; color: #3D7700; } dd.example.not_implemented { border-left: 5px solid #FAF834; border-bottom: 1px solid #FAF834; background: #FCFB98; color: #131313; } dd.example.pending_fixed { border-left: 5px solid #0000C2; border-bottom: 1px solid #0000C2; color: #0000C2; background: #D3FBFF; } dd.example.failed { border-left: 5px solid #C20000; border-bottom: 1px solid #C20000; color: #C20000; background: #FFFBD3; } dt.not_implemented { color: #000000; background: #FAF834; } dt.pending_fixed { color: #FFFFFF; background: #C40D0D; } dt.failed { color: #FFFFFF; background: #C40D0D; } #rspec-header.not_implemented { color: #000000; background: #FAF834; } #rspec-header.pending_fixed { color: #FFFFFF; background: #C40D0D; } #rspec-header.failed { color: #FFFFFF; background: #C40D0D; } .backtrace { color: #000; font-size: 12px; } a { color: #BE5C00; } /* Ruby code, style similar to vibrant ink */ .ruby { font-size: 12px; font-family: monospace; color: white; background-color: black; padding: 0.1em 0 0.2em 0; } .ruby .keyword { color: #FF6600; } .ruby .constant { color: #339999; } .ruby .attribute { color: white; } .ruby .global { color: white; } .ruby .module { color: white; } .ruby .class { color: white; } .ruby .string { color: #66FF00; } .ruby .ident { color: white; } .ruby .method { color: #FFCC00; } .ruby .number { color: white; } .ruby .char { color: white; } .ruby .comment { color: #9933CC; } .ruby .symbol { color: white; } .ruby .regex { color: #44B4CC; } .ruby .punct { color: white; } .ruby .escape { color: white; } .ruby .interp { color: white; } .ruby .expr { color: white; } .ruby .offending { background-color: gray; } .ruby .linenum { width: 75px; padding: 0.1em 1em 0.2em 0; color: #000000; background-color: #FFFBD3; }</style>
<div class="rspec-report">
<div id="rspec-header">
<div id="label">
# RSpec Code Examples

</div>

<div id="display-filters"><input id="passed_checkbox" name="passed_checkbox" type="checkbox" checked="checked" onchange="apply_filters()" value="1"><label for="passed_checkbox">Passed</label> <input id="failed_checkbox" name="failed_checkbox" type="checkbox" checked="checked" onchange="apply_filters()" value="2"><label for="failed_checkbox">Failed</label> <input id="pending_checkbox" name="pending_checkbox" type="checkbox" checked="checked" onchange="apply_filters()" value="3"><label for="pending_checkbox">Pending</label></div>

<div id="summary">

</div>

</div>

<div class="results">
<div id="div_group_1" class="example_group passed">
<dl style="margin-left: 0px;">
<dt id="example_group_1" class="passed">OiApi::Client::DataTransfers</dt>

</dl>

</div>

<div id="div_group_2" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_2" class="passed">#data_transfer</dt>

</dl>

</div>

<div id="div_group_3" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_3" class="passed">it should behave like GET resource</dt>

<script type="text/javascript">moveProgressBar('1.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns the resource</span><span class="duration">0.20201s</span></dd>

<script type="text/javascript">moveProgressBar('2.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.20563s</span></dd>

<script type="text/javascript">moveProgressBar('3.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.16539s</span></dd>

</dl>

</div>

<div id="div_group_4" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_4" class="passed">when data_transfer_id not found</dt>

<script type="text/javascript">makeRed('rspec-header');</script> <script type="text/javascript">makeRed('div_group_4');</script> <script type="text/javascript">makeRed('example_group_4');</script> <script type="text/javascript">moveProgressBar('4.0');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.04966s</span>
<div class="failure" id="failure_1">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:27:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">25</span>
    <span class="linenum">26</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">27</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">28</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('5.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.11092s</span>
<div class="failure" id="failure_2">
<div class="message">
<pre>expected: "Record not found"
     got: "No permission to view data transfer for offer."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:19:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">17</span>
    <span class="linenum">18</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">19</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Record not found</span><span class="delimiter">'</span></span></span>
    <span class="linenum">20</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('6.1');</script>
<dd class="example passed"><span class="passed_spec_name">returns not found error message</span><span class="duration">0.11731s</span></dd>

</dl>

</div>

<div id="div_group_5" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_5" class="passed">#create_data_transfer</dt>

</dl>

</div>

<div id="div_group_6" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_6" class="passed">it should behave like POST resource</dt>

<script type="text/javascript">makeRed('div_group_6');</script> <script type="text/javascript">makeRed('example_group_6');</script> <script type="text/javascript">moveProgressBar('7.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns 201 created</span> <span class="duration">0.17064s</span>
<div class="failure" id="failure_3">
<div class="message">
<pre>expected: 201
     got: 200

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_post_resource.rb:12:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">10</span>
    <span class="linenum">11</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns 201 created</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">12</span>    expect(response.code).to eql <span class="integer">201</span></span>
    <span class="linenum">13</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('8.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns a success message</span> <span class="duration">0.12982s</span>
<div class="failure" id="failure_4">
<div class="message">
<pre>expected: "Data_transfer successfully created"
     got: nil

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_post_resource.rb:4:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">2</span>
    <span class="linenum">3</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns a success message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">4</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name.capitalize<span class="inline-delimiter">}</span></span><span class="content"> successfully created</span><span class="delimiter">"</span></span>)</span>
    <span class="linenum">5</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('9.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns a success status</span> <span class="duration">0.16572s</span>
<div class="failure" id="failure_5">
<div class="message">
<pre>expected: "Request Successful"
     got: "Create Successful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_post_resource.rb:8:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">6</span>
    <span class="linenum">7</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns a success status</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">8</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Request Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">9</span>  <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_7" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_7" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('10.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.17705s</span></dd>

<script type="text/javascript">moveProgressBar('11.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.16753s</span></dd>

<script type="text/javascript">moveProgressBar('12.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error message</span><span class="duration">0.17194s</span></dd>

</dl>

</div>

<div id="div_group_8" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_8" class="passed">#update_data_transfer</dt>

</dl>

</div>

<div id="div_group_9" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_9" class="passed">it should behave like PUT resource</dt>

<script type="text/javascript">moveProgressBar('13.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.19924s</span></dd>

<script type="text/javascript">makeRed('div_group_9');</script> <script type="text/javascript">makeRed('example_group_9');</script> <script type="text/javascript">moveProgressBar('14.2');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct status</span> <span class="duration">0.17480s</span>
<div class="failure" id="failure_6">
<div class="message">
<pre>expected: "Request Successful"
     got: "Update Successful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:4:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">2</span>
    <span class="linenum">3</span>  it <span class="string"><span class="delimiter">"</span><span class="content">returns the correct status</span><span class="delimiter">"</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">4</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Request Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">5</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('15.3');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct message</span> <span class="duration">0.20364s</span>
<div class="failure" id="failure_7">
<div class="message">
<pre>expected: "Data_transfer successfully updated"
     got: nil

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:8:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">6</span>
    <span class="linenum">7</span>  it <span class="string"><span class="delimiter">"</span><span class="content">returns the correct message</span><span class="delimiter">"</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">8</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name.capitalize<span class="inline-delimiter">}</span></span><span class="content"> successfully updated</span><span class="delimiter">"</span></span>)</span>
    <span class="linenum">9</span>  <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_10" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_10" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('16.3');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.21683s</span></dd>

<script type="text/javascript">moveProgressBar('17.3');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.19661s</span></dd>

<script type="text/javascript">makeRed('div_group_10');</script> <script type="text/javascript">makeRed('example_group_10');</script> <script type="text/javascript">moveProgressBar('18.3');</script>
<dd class="example failed"><span class="failed_spec_name">returns an error message</span> <span class="duration">0.19244s</span>
<div class="failure" id="failure_8">
<div class="message">
<pre>expected: {"status_id"=>["Invalid Status Id"]}
     got: {"status_id"=>["not a valid status"]}

(compared using eql?)

Diff:
@@ -1,2 +1,2 @@
-"status_id" => ["Invalid Status Id"],
+"status_id" => ["not a valid status"],
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:22:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">20</span>
    <span class="linenum">21</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns an error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">22</span>      expect(bad_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql(bad_response_message)</span>
    <span class="linenum">23</span>    <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_11" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_11" class="passed">when data_transfer not found</dt>

<script type="text/javascript">moveProgressBar('19.3');</script>
<dd class="example passed"><span class="passed_spec_name">returns error status</span><span class="duration">0.11467s</span></dd>

<script type="text/javascript">makeRed('div_group_11');</script> <script type="text/javascript">makeRed('example_group_11');</script> <script type="text/javascript">moveProgressBar('20.4');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.13277s</span>
<div class="failure" id="failure_9">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:33:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">31</span>
    <span class="linenum">32</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">33</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">34</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('21.4');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.11023s</span>
<div class="failure" id="failure_10">
<div class="message">
<pre>expected: "Data Transfer not found"
     got: "Data Transfer not found under this offer."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:38:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">36</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="linenum">37</span>      titleized_resource = resource_name.to_s.split(<span class="string"><span class="delimiter">'</span><span class="content">_</span><span class="delimiter">'</span></span>).map(&<span class="symbol">:capitalize</span>).join(<span class="string"><span class="delimiter">'</span><span class="delimiter">'</span></span>)
    <span class="offending"><span class="linenum">38</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>titleized_resource<span class="inline-delimiter">}</span></span><span class="content"> not found</span><span class="delimiter">"</span></span></span>
    <span class="linenum">39</span>    <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_12" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_12" class="passed">#delete_data_transfer</dt>

</dl>

</div>

<div id="div_group_13" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_13" class="passed">it should behave like DELETE resource</dt>

<script type="text/javascript">makeRed('div_group_13');</script> <script type="text/javascript">makeRed('example_group_13');</script> <script type="text/javascript">moveProgressBar('22.4');</script>
<dd class="example failed"><span class="failed_spec_name">deletes a data transfer</span> <span class="duration">0.20491s</span>
<div class="failure" id="failure_11">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:18:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">16</span>    response
    <span class="linenum">17</span>    resource_id = eval(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name<span class="inline-delimiter">}</span></span><span class="content">['id']</span><span class="delimiter">"</span></span>)
    <span class="offending"><span class="linenum">18</span>    expect(api.public_send(resource_name, resource_id).code).to eql <span class="integer">404</span></span>
    <span class="linenum">19</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('23.4');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct message</span> <span class="duration">0.14896s</span>
<div class="failure" id="failure_12">
<div class="message">
<pre>expected: "Data_transfer Succesfully deleted"
     got: "DataTransfer Succesfully Deleted"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:4:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">2</span>
    <span class="linenum">3</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns the correct message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">4</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name.capitalize<span class="inline-delimiter">}</span></span><span class="content"> Succesfully deleted</span><span class="delimiter">"</span></span>)</span>
    <span class="linenum">5</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('24.4');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.18086s</span></dd>

<script type="text/javascript">moveProgressBar('25.5');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct status</span> <span class="duration">0.18907s</span>
<div class="failure" id="failure_13">
<div class="message">
<pre>expected: "Delete Successful"
     got: "Request Successful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:8:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">6</span>
    <span class="linenum">7</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns the correct status</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">8</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Delete Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">9</span>  <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_14" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_14" class="passed">when data_transfer not found</dt>

<script type="text/javascript">makeRed('div_group_14');</script> <script type="text/javascript">makeRed('example_group_14');</script> <script type="text/javascript">moveProgressBar('26.5');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.06150s</span>
<div class="failure" id="failure_14">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:32:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">30</span>
    <span class="linenum">31</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">32</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">33</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('27.5');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.09514s</span>
<div class="failure" id="failure_15">
<div class="message">
<pre>expected: "Record not found"
     got: "No permission to update data transfer for offer."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:24:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">22</span>
    <span class="linenum">23</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">24</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Record not found</span><span class="delimiter">'</span></span></span>
    <span class="linenum">25</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('28.5');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error status</span> <span class="duration">0.07012s</span>
<div class="failure" id="failure_16">
<div class="message">
<pre>expected: "Request Failed"
     got: "Delete Failed"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:28:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">26</span>
    <span class="linenum">27</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error status</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">28</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Request Failed</span><span class="delimiter">'</span></span></span>
    <span class="linenum">29</span>    <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_15" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_15" class="passed">#data_transfers</dt>

</dl>

</div>

<div id="div_group_16" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_16" class="passed">it should behave like GET resources</dt>

<script type="text/javascript">moveProgressBar('29.5');</script>
<dd class="example passed"><span class="passed_spec_name">returns all resources</span><span class="duration">0.21071s</span></dd>

<script type="text/javascript">moveProgressBar('30.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.16913s</span></dd>

<script type="text/javascript">moveProgressBar('31.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.20153s</span></dd>

</dl>

</div>

<div id="div_group_17" class="example_group passed">
<dl style="margin-left: 0px;">
<dt id="example_group_17" class="passed">OiApi::Client::Offers</dt>

</dl>

</div>

<div id="div_group_18" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_18" class="passed">#update_offer</dt>

</dl>

</div>

<div id="div_group_19" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_19" class="passed">it should behave like PUT resource</dt>

<script type="text/javascript">moveProgressBar('32.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.11396s</span></dd>

<script type="text/javascript">makeRed('div_group_19');</script> <script type="text/javascript">makeRed('example_group_19');</script> <script type="text/javascript">moveProgressBar('33.6');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct status</span> <span class="duration">0.15404s</span>
<div class="failure" id="failure_17">
<div class="message">
<pre>expected: "Request Successful"
     got: "Request Succesful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:4:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">2</span>
    <span class="linenum">3</span>  it <span class="string"><span class="delimiter">"</span><span class="content">returns the correct status</span><span class="delimiter">"</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">4</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Request Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">5</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('34.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns the correct message</span><span class="duration">0.11722s</span></dd>

</dl>

</div>

<div id="div_group_20" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_20" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('35.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.11801s</span></dd>

<script type="text/javascript">moveProgressBar('36.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.09705s</span></dd>

<script type="text/javascript">moveProgressBar('37.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error message</span><span class="duration">0.12436s</span></dd>

</dl>

</div>

<div id="div_group_21" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_21" class="passed">when offer not found</dt>

<script type="text/javascript">moveProgressBar('38.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns error status</span><span class="duration">0.05006s</span></dd>

<script type="text/javascript">moveProgressBar('39.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns 404</span><span class="duration">0.07851s</span></dd>

<script type="text/javascript">moveProgressBar('40.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns not found error message</span><span class="duration">0.05155s</span></dd>

</dl>

</div>

<div id="div_group_22" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_22" class="passed">#offers</dt>

</dl>

</div>

<div id="div_group_23" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_23" class="passed">it should behave like GET resources</dt>

<script type="text/javascript">moveProgressBar('41.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns all resources</span><span class="duration">0.21938s</span></dd>

<script type="text/javascript">moveProgressBar('42.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.19182s</span></dd>

<script type="text/javascript">moveProgressBar('43.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.20248s</span></dd>

</dl>

</div>

<div id="div_group_24" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_24" class="passed">#create_offer</dt>

</dl>

</div>

<div id="div_group_25" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_25" class="passed">it should behave like POST resource</dt>

<script type="text/javascript">moveProgressBar('44.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns 201 created</span><span class="duration">0.09910s</span></dd>

<script type="text/javascript">moveProgressBar('45.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns a success message</span><span class="duration">0.07216s</span></dd>

<script type="text/javascript">moveProgressBar('46.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns a success status</span><span class="duration">0.10410s</span></dd>

</dl>

</div>

<div id="div_group_26" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_26" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('47.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.08832s</span></dd>

<script type="text/javascript">moveProgressBar('48.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.10403s</span></dd>

<script type="text/javascript">moveProgressBar('50.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error message</span><span class="duration">0.10233s</span></dd>

</dl>

</div>

<div id="div_group_27" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_27" class="passed">#offer</dt>

</dl>

</div>

<div id="div_group_28" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_28" class="passed">it should behave like GET resource</dt>

<script type="text/javascript">moveProgressBar('51.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns the resource</span><span class="duration">0.13692s</span></dd>

<script type="text/javascript">moveProgressBar('52.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.11672s</span></dd>

<script type="text/javascript">moveProgressBar('53.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.11139s</span></dd>

</dl>

</div>

<div id="div_group_29" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_29" class="passed">when offer_id not found</dt>

<script type="text/javascript">makeRed('div_group_29');</script> <script type="text/javascript">makeRed('example_group_29');</script> <script type="text/javascript">moveProgressBar('54.0');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.05802s</span>
<div class="failure" id="failure_18">
<div class="message">
<pre>expected: 404
     got: 403

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:27:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">25</span>
    <span class="linenum">26</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">27</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">28</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('55.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.09645s</span>
<div class="failure" id="failure_19">
<div class="message">
<pre>expected: "Record not found"
     got: "You do not have permission to perform this action."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:19:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">17</span>
    <span class="linenum">18</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">19</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Record not found</span><span class="delimiter">'</span></span></span>
    <span class="linenum">20</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('56.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.09000s</span>
<div class="failure" id="failure_20">
<div class="message">
<pre>expected: "Retrieve Failed"
     got: "Permission Denied"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:23:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">21</span>
    <span class="linenum">22</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">23</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Retrieve Failed</span><span class="delimiter">'</span></span></span>
    <span class="linenum">24</span>    <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_30" class="example_group passed">
<dl style="margin-left: 0px;">
<dt id="example_group_30" class="passed">OiApi::Client::Reports</dt>

</dl>

</div>

<div id="div_group_31" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_31" class="passed">#reports</dt>

<script type="text/javascript">makeRed('div_group_31');</script> <script type="text/javascript">makeRed('example_group_31');</script> <script type="text/javascript">moveProgressBar('57.1');</script>
<dd class="example failed"><span class="failed_spec_name">returns a report summary</span> <span class="duration">0.02009s</span>
<div class="failure" id="failure_21">
<div class="message">
<pre>expected: ["today", "yesterday", "mtd"]
     got: ["status", "data"]

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/oi_api/client/reports_spec.rb:21:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">19</span>
    <span class="linenum">20</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns a report summary</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">21</span>      expect(response.keys).to eql [<span class="string"><span class="delimiter">'</span><span class="content">today</span><span class="delimiter">'</span></span>, <span class="string"><span class="delimiter">'</span><span class="content">yesterday</span><span class="delimiter">'</span></span>, <span class="string"><span class="delimiter">'</span><span class="content">mtd</span><span class="delimiter">'</span></span>]</span>
    <span class="linenum">22</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('58.1');</script>
<dd class="example passed"><span class="passed_spec_name">retrieves the last 60 days of data</span><span class="duration">0.02105s</span></dd>

</dl>

</div>

<div id="div_group_32" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_32" class="passed">it should behave like GET resources</dt>

<script type="text/javascript">moveProgressBar('59.1');</script>
<dd class="example passed"><span class="passed_spec_name">returns all resources</span><span class="duration">0.01907s</span></dd>

<script type="text/javascript">moveProgressBar('60.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.02165s</span></dd>

<script type="text/javascript">moveProgressBar('61.2');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.01866s</span></dd>

</dl>

</div>

<div id="div_group_33" class="example_group passed">
<dl style="margin-left: 0px;">
<dt id="example_group_33" class="passed">OiApi</dt>

<script type="text/javascript">moveProgressBar('62.2');</script>
<dd class="example passed"><span class="passed_spec_name">has a version</span><span class="duration">0.00054s</span></dd>

</dl>

</div>

<div id="div_group_34" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_34" class="passed">configuration</dt>

</dl>

</div>

<div id="div_group_35" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_35" class="passed">.password</dt>

<script type="text/javascript">moveProgressBar('63.2');</script>
<dd class="example passed"><span class="passed_spec_name">defaults nil</span><span class="duration">0.00397s</span></dd>

</dl>

</div>

<div id="div_group_36" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_36" class="passed">.api_endpoint</dt>

<script type="text/javascript">moveProgressBar('64.2');</script>
<dd class="example passed"><span class="passed_spec_name">has a default</span><span class="duration">0.00008s</span></dd>

</dl>

</div>

<div id="div_group_37" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_37" class="passed">.user_agent</dt>

<script type="text/javascript">moveProgressBar('65.3');</script>
<dd class="example passed"><span class="passed_spec_name">has a default</span><span class="duration">0.00006s</span></dd>

</dl>

</div>

<div id="div_group_38" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_38" class="passed">.format</dt>

<script type="text/javascript">moveProgressBar('66.3');</script>
<dd class="example passed"><span class="passed_spec_name">has a default</span><span class="duration">0.00006s</span></dd>

</dl>

</div>

<div id="div_group_39" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_39" class="passed">.username</dt>

<script type="text/javascript">moveProgressBar('67.3');</script>
<dd class="example passed"><span class="passed_spec_name">defaults nil</span><span class="duration">0.00008s</span></dd>

</dl>

</div>

<div id="div_group_40" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_40" class="passed">.content_type</dt>

<script type="text/javascript">moveProgressBar('68.3');</script>
<dd class="example passed"><span class="passed_spec_name">has a default</span><span class="duration">0.00008s</span></dd>

</dl>

</div>

<div id="div_group_41" class="example_group passed">
<dl style="margin-left: 0px;">
<dt id="example_group_41" class="passed">OiApi::Client::Advertisers</dt>

</dl>

</div>

<div id="div_group_42" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_42" class="passed">#advertiser</dt>

</dl>

</div>

<div id="div_group_43" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_43" class="passed">it should behave like GET resource</dt>

<script type="text/javascript">moveProgressBar('69.3');</script>
<dd class="example passed"><span class="passed_spec_name">returns the resource</span><span class="duration">0.07609s</span></dd>

<script type="text/javascript">moveProgressBar('70.4');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.07434s</span></dd>

<script type="text/javascript">moveProgressBar('71.4');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.07484s</span></dd>

</dl>

</div>

<div id="div_group_44" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_44" class="passed">when advertiser_id not found</dt>

<script type="text/javascript">makeRed('div_group_44');</script> <script type="text/javascript">makeRed('example_group_44');</script> <script type="text/javascript">moveProgressBar('72.4');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.03728s</span>
<div class="failure" id="failure_22">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:27:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">25</span>
    <span class="linenum">26</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">27</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">28</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('73.4');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.05148s</span>
<div class="failure" id="failure_23">
<div class="message">
<pre>expected: "Record not found"
     got: "No permission to view advertiser."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_get_resource.rb:19:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">17</span>
    <span class="linenum">18</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">19</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Record not found</span><span class="delimiter">'</span></span></span>
    <span class="linenum">20</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('74.4');</script>
<dd class="example passed"><span class="passed_spec_name">returns not found error message</span><span class="duration">0.05580s</span></dd>

</dl>

</div>

<div id="div_group_45" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_45" class="passed">#create_advertiser</dt>

</dl>

</div>

<div id="div_group_46" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_46" class="passed">it should behave like POST resource</dt>

<script type="text/javascript">moveProgressBar('75.5');</script>
<dd class="example passed"><span class="passed_spec_name">returns 201 created</span><span class="duration">0.05847s</span></dd>

<script type="text/javascript">moveProgressBar('76.5');</script>
<dd class="example passed"><span class="passed_spec_name">returns a success message</span><span class="duration">0.03866s</span></dd>

<script type="text/javascript">makeRed('div_group_46');</script> <script type="text/javascript">makeRed('example_group_46');</script> <script type="text/javascript">moveProgressBar('77.5');</script>
<dd class="example failed"><span class="failed_spec_name">returns a success status</span> <span class="duration">0.05797s</span>
<div class="failure" id="failure_24">
<div class="message">
<pre>expected: "Request Successful"
     got: "Create Successful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_post_resource.rb:8:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">6</span>
    <span class="linenum">7</span>  it <span class="string"><span class="delimiter">'</span><span class="content">returns a success status</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">8</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Request Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">9</span>  <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_47" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_47" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('78.5');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.04178s</span></dd>

<script type="text/javascript">moveProgressBar('79.5');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.05973s</span></dd>

<script type="text/javascript">moveProgressBar('80.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error message</span><span class="duration">0.03367s</span></dd>

</dl>

</div>

<div id="div_group_48" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_48" class="passed">#update_advertiser</dt>

</dl>

</div>

<div id="div_group_49" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_49" class="passed">it should behave like PUT resource</dt>

<script type="text/javascript">moveProgressBar('81.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.07419s</span></dd>

<script type="text/javascript">makeRed('div_group_49');</script> <script type="text/javascript">makeRed('example_group_49');</script> <script type="text/javascript">moveProgressBar('82.6');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct status</span> <span class="duration">0.10921s</span>
<div class="failure" id="failure_25">
<div class="message">
<pre>expected: "Request Successful"
     got: "Update Successful"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:4:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">2</span>
    <span class="linenum">3</span>  it <span class="string"><span class="delimiter">"</span><span class="content">returns the correct status</span><span class="delimiter">"</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">4</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">status</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">'</span><span class="content">Request Successful</span><span class="delimiter">'</span></span>)</span>
    <span class="linenum">5</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('83.6');</script>
<dd class="example failed"><span class="failed_spec_name">returns the correct message</span> <span class="duration">0.07317s</span>
<div class="failure" id="failure_26">
<div class="message">
<pre>expected: "Advertiser successfully updated"
     got: nil

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:8:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">6</span>
    <span class="linenum">7</span>  it <span class="string"><span class="delimiter">"</span><span class="content">returns the correct message</span><span class="delimiter">"</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">8</span>    expect(response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name.capitalize<span class="inline-delimiter">}</span></span><span class="content"> successfully updated</span><span class="delimiter">"</span></span>)</span>
    <span class="linenum">9</span>  <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_50" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_50" class="passed">bad request</dt>

<script type="text/javascript">moveProgressBar('84.6');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error status</span><span class="duration">0.07439s</span></dd>

<script type="text/javascript">moveProgressBar('85.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns 400 bad request with invalid params</span><span class="duration">0.05426s</span></dd>

<script type="text/javascript">moveProgressBar('86.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns an error message</span><span class="duration">0.07639s</span></dd>

</dl>

</div>

<div id="div_group_51" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_51" class="passed">when advertiser not found</dt>

<script type="text/javascript">moveProgressBar('87.7');</script>
<dd class="example passed"><span class="passed_spec_name">returns error status</span><span class="duration">0.03445s</span></dd>

<script type="text/javascript">makeRed('div_group_51');</script> <script type="text/javascript">makeRed('example_group_51');</script> <script type="text/javascript">moveProgressBar('88.7');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.05943s</span>
<div class="failure" id="failure_27">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:33:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">31</span>
    <span class="linenum">32</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">33</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">34</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('89.7');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.03451s</span>
<div class="failure" id="failure_28">
<div class="message">
<pre>expected: "Advertiser not found"
     got: "No permission to update advertiser."

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_put_resource.rb:38:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">36</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="linenum">37</span>      titleized_resource = resource_name.to_s.split(<span class="string"><span class="delimiter">'</span><span class="content">_</span><span class="delimiter">'</span></span>).map(&<span class="symbol">:capitalize</span>).join(<span class="string"><span class="delimiter">'</span><span class="delimiter">'</span></span>)
    <span class="offending"><span class="linenum">38</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>titleized_resource<span class="inline-delimiter">}</span></span><span class="content"> not found</span><span class="delimiter">"</span></span></span>
    <span class="linenum">39</span>    <span class="keyword">end</span>

</div>

</dd>

</dl>

</div>

<div id="div_group_52" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_52" class="passed">#delete_advertiser</dt>

</dl>

</div>

<div id="div_group_53" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_53" class="passed">it should behave like DELETE resource</dt>

<script type="text/javascript">makeRed('div_group_53');</script> <script type="text/javascript">makeRed('example_group_53');</script> <script type="text/javascript">moveProgressBar('90.8');</script>
<dd class="example failed"><span class="failed_spec_name">deletes a data transfer</span> <span class="duration">0.07900s</span>
<div class="failure" id="failure_29">
<div class="message">
<pre>expected: 404
     got: 400

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:18:in `block (2 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">16</span>    response
    <span class="linenum">17</span>    resource_id = eval(<span class="string"><span class="delimiter">"</span><span class="inline"><span class="inline-delimiter">#{</span>resource_name<span class="inline-delimiter">}</span></span><span class="content">['id']</span><span class="delimiter">"</span></span>)
    <span class="offending"><span class="linenum">18</span>    expect(api.public_send(resource_name, resource_id).code).to eql <span class="integer">404</span></span>
    <span class="linenum">19</span>  <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('91.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns the correct message</span><span class="duration">0.10264s</span></dd>

<script type="text/javascript">moveProgressBar('92.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.06022s</span></dd>

<script type="text/javascript">moveProgressBar('93.8');</script>
<dd class="example passed"><span class="passed_spec_name">returns the correct status</span><span class="duration">0.05877s</span></dd>

</dl>

</div>

<div id="div_group_54" class="example_group passed">
<dl style="margin-left: 45px;">
<dt id="example_group_54" class="passed">when advertiser not found</dt>

<script type="text/javascript">makeRed('div_group_54');</script> <script type="text/javascript">makeRed('example_group_54');</script> <script type="text/javascript">moveProgressBar('94.8');</script>
<dd class="example failed"><span class="failed_spec_name">returns 404</span> <span class="duration">0.03656s</span>
<div class="failure" id="failure_30">
<div class="message">
<pre>expected: 404
     got: 403

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:32:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">30</span>
    <span class="linenum">31</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns 404</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">32</span>      expect(not_found_response.code).to eql <span class="integer">404</span></span>
    <span class="linenum">33</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('95.9');</script>
<dd class="example failed"><span class="failed_spec_name">returns not found error message</span> <span class="duration">0.03852s</span>
<div class="failure" id="failure_31">
<div class="message">
<pre>expected: "Record not found"
     got: "Operation not allowed"

(compared using eql?)
</pre>

</div>

<div class="backtrace">
<pre>./spec/shared_examples_for_delete_resource.rb:24:in `block (3 levels) in <top (required)>'</pre>

</div>

    <span class="linenum">22</span>
    <span class="linenum">23</span>    it <span class="string"><span class="delimiter">'</span><span class="content">returns not found error message</span><span class="delimiter">'</span></span> <span class="keyword">do</span>
    <span class="offending"><span class="linenum">24</span>      expect(not_found_response[<span class="string"><span class="delimiter">'</span><span class="content">message</span><span class="delimiter">'</span></span>]).to eql <span class="string"><span class="delimiter">'</span><span class="content">Record not found</span><span class="delimiter">'</span></span></span>
    <span class="linenum">25</span>    <span class="keyword">end</span>

</div>

</dd>

<script type="text/javascript">moveProgressBar('96.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns not found error status</span><span class="duration">0.03889s</span></dd>

</dl>

</div>

<div id="div_group_55" class="example_group passed">
<dl style="margin-left: 15px;">
<dt id="example_group_55" class="passed">#advertisers</dt>

</dl>

</div>

<div id="div_group_56" class="example_group passed">
<dl style="margin-left: 30px;">
<dt id="example_group_56" class="passed">it should behave like GET resources</dt>

<script type="text/javascript">moveProgressBar('97.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns all resources</span><span class="duration">0.11642s</span></dd>

<script type="text/javascript">moveProgressBar('98.9');</script>
<dd class="example passed"><span class="passed_spec_name">returns 200 OK</span><span class="duration">0.07865s</span></dd>

<script type="text/javascript">moveProgressBar('100.0');</script>
<dd class="example passed"><span class="passed_spec_name">returns HTTParty::Response</span><span class="duration">0.11368s</span></dd>

</dl>

</div>

Top 10 slowest examples (2.07 seconds, 21.0% of total time): OiApi::Client::Offers#offers it should behave like GET resources returns all resources 0.21938 seconds ./spec/shared_examples_for_get_resources.rb:11 OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource bad request returns an error status 0.21683 seconds ./spec/shared_examples_for_put_resource.rb:25 OiApi::Client::DataTransfers#data_transfers it should behave like GET resources returns all resources 0.21071 seconds ./spec/shared_examples_for_get_resources.rb:11 OiApi::Client::DataTransfers#data_transfer it should behave like GET resource returns 200 OK 0.20563 seconds ./spec/shared_examples_for_get_resource.rb:3 OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource deletes a data transfer 0.20491 seconds ./spec/shared_examples_for_delete_resource.rb:15 OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource returns the correct message 0.20364 seconds ./spec/shared_examples_for_put_resource.rb:7 OiApi::Client::Offers#offers it should behave like GET resources returns HTTParty::Response 0.20248 seconds ./spec/shared_examples_for_get_resources.rb:7 OiApi::Client::DataTransfers#data_transfer it should behave like GET resource returns the resource 0.20201 seconds ./spec/shared_examples_for_get_resource.rb:11 OiApi::Client::DataTransfers#data_transfers it should behave like GET resources returns HTTParty::Response 0.20153 seconds ./spec/shared_examples_for_get_resources.rb:7 OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource returns 200 OK 0.19924 seconds ./spec/shared_examples_for_put_resource.rb:11 Top 5 slowest example groups: OiApi::Client::DataTransfers 0.15828 seconds average (4.91 seconds / 31 examples) ./spec/oi_api/client/data_transfers_spec.rb:9 OiApi::Client::Offers 0.11242 seconds average (2.7 seconds / 24 examples) ./spec/oi_api/client/offers_spec.rb:9 OiApi::Client::Advertisers 0.06366 seconds average (1.97 seconds / 31 examples) ./spec/oi_api/client/advertisers_spec.rb:9 OiApi::Client::Reports 0.0201 seconds average (0.10051 seconds / 5 examples) ./spec/oi_api/client/reports_spec.rb:9 OiApi 0.00069 seconds average (0.00486 seconds / 7 examples) ./spec/oi_api_spec.rb:3 <script type="text/javascript">document.getElementById('duration').innerHTML = "Finished in <strong>9.85099 seconds</strong>";</script> <script type="text/javascript">document.getElementById('totals').innerHTML = "98 examples, 31 failures";</script></div>

</div>
