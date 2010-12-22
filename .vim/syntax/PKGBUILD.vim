
    

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>syntax/PKGBUILD.vim at master from vim-scripts's PKGBUILD - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    <link href="https://assets1.github.com/stylesheets/bundle_common.css?9be3b31760b2ed1e0983740b292778ab7067fa37" media="screen" rel="stylesheet" type="text/css" />
<link href="https://assets0.github.com/stylesheets/bundle_github.css?9be3b31760b2ed1e0983740b292778ab7067fa37" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = null
      
    </script>
    <script src="https://assets2.github.com/javascripts/jquery/jquery-1.4.2.min.js?9be3b31760b2ed1e0983740b292778ab7067fa37" type="text/javascript"></script>
    <script src="https://assets2.github.com/javascripts/bundle_common.js?9be3b31760b2ed1e0983740b292778ab7067fa37" type="text/javascript"></script>
<script src="https://assets3.github.com/javascripts/bundle_github.js?9be3b31760b2ed1e0983740b292778ab7067fa37" type="text/javascript"></script>


        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "vim-scripts/PKGBUILD"
      })
    </script>

    
  
    
  

  <link href="https://github.com/vim-scripts/PKGBUILD/commits/master.atom" rel="alternate" title="Recent Commits to PKGBUILD:master" type="application/atom+xml" />

        <meta name="description" content="helps editing and working with PKGBUILD files" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "vim-scripts/PKGBUILD";
      GitHub.currentRef = 'master';
      GitHub.commitSHA = "718cf2fb62ea875e4a327f527c7a094a1d1c2ec6";
      GitHub.currentPath = "syntax/PKGBUILD.vim";
      GitHub.masterBranch = "master";

      
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body class="logged_out ">
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        function _kms(u){
          var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
          s.src = u; f.parentNode.insertBefore(s, f);
        }
        _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js');
      </script>
    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <![if !IE]>
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <![endif]>
          </a>
        
        
        <div class="topsearch">
  
    <ul class="nav logged_out">
      <li class="pricing"><a href="/plans">Pricing and Signup</a></li>
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="/features">Features</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="https://github.com/login">Login</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/vim-scripts">vim-scripts</a> / <strong><a href="https://github.com/vim-scripts/PKGBUILD">PKGBUILD</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/vim-scripts/PKGBUILD/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/vim-scripts/PKGBUILD/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '6943c02a1f90e438627d1427769d0f73862dc844'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/vim-scripts/PKGBUILD/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '6943c02a1f90e438627d1427769d0f73862dc844'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/vim-scripts/PKGBUILD/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '6943c02a1f90e438627d1427769d0f73862dc844'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/vim-scripts/PKGBUILD/watchers" title="Watchers" class="tooltipped downwards">1</a></li>
          <li class="forks"><a href="/vim-scripts/PKGBUILD/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="https://github.com/vim-scripts/PKGBUILD" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="https://github.com/vim-scripts/PKGBUILD/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/vim-scripts/PKGBUILD/network" highlight="repo_network">Network</a></li>
    <li><a href="/vim-scripts/PKGBUILD/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    

    

    
    <li><a href="/vim-scripts/PKGBUILD/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown ">Switch Tags (1)</a>
              <ul>
                      
              <li><a href="/vim-scripts/PKGBUILD/blob/0.1/syntax/PKGBUILD.vim">0.1</a></li>
            
                  </ul>
      
    </li>
    <li>
    
    <a href="/vim-scripts/PKGBUILD/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/vim-scripts/PKGBUILD/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
          <p>helps editing and working with PKGBUILD files
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>

      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/vim-scripts/PKGBUILD/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="6943c02a1f90e438627d1427769d0f73862dc844" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="helps editing and working with PKGBUILD files">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://www.vim.org/scripts/script.php?script_id=2700" rel="nofollow">http://www.vim.org/scripts/script.php?script_id=2700</a></p>
      </div>

      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/vim-scripts/PKGBUILD/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="6943c02a1f90e438627d1427769d0f73862dc844" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="http://www.vim.org/scripts/script.php?script_id=2700">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule "></div>
            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
            <li id="http_clone_url"><a href="https://github.com/vim-scripts/PKGBUILD.git" data-permissions="Read-Only">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/vim-scripts/PKGBUILD.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets2.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets2.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = 'master'
  GitHub.currentRepoOwner = 'vim-scripts'
  GitHub.currentRepo = "PKGBUILD"
  GitHub.downloadRepo = '/vim-scripts/PKGBUILD/archives/master'
  GitHub.revType = "master"

  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  

  
</script>








  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/vim-scripts/PKGBUILD/commit/718cf2fb62ea875e4a327f527c7a094a1d1c2ec6">Version 0.1: Initial upload</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="https://secure.gravatar.com/avatar/4530c558527b408b1319cd9ece30dd73?s=140&d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name">Laszlo Papp <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2009-07-04 17:00:00">Sat Jul 04 17:00:00 -0700 2009</abbr>
        </div>
      </div>

      
        <div class="actor">
          <div class="gravatar">
            <img src="https://secure.gravatar.com/avatar/f3178f250ee1c3d0c8e425222441e653?s=140&d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
          </div>
          <div class="name"><a href="/vim-scripts">vim-scripts</a> <span>(committer)</span></div>
          <div class="date"><abbr class="relatize" title="2010-11-15 18:37:36">Mon Nov 15 18:37:36 -0800 2010</abbr></div>
        </div>
      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/vim-scripts/PKGBUILD/commit/718cf2fb62ea875e4a327f527c7a094a1d1c2ec6" hotkey="c">718cf2fb62ea875e4a32</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/vim-scripts/PKGBUILD/tree/718cf2fb62ea875e4a327f527c7a094a1d1c2ec6/ftplugin" hotkey="t">d9cab92478f352c8b277</a><br />
      

    </div>
  </div>

    </div>
  </div>



  <div id="slider">

  
    <div class="breadcrumb" data-path="syntax/PKGBUILD.vim/">
      <b><a href="/vim-scripts/PKGBUILD/tree/718cf2fb62ea875e4a327f527c7a094a1d1c2ec6">PKGBUILD</a></b> / <a href="/vim-scripts/PKGBUILD/tree/718cf2fb62ea875e4a327f527c7a094a1d1c2ec6/syntax">syntax</a> / PKGBUILD.vim       <span style="display:none" id="clippy_1330">syntax/PKGBUILD.vim</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets2.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_1330&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets2.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_1330&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="syntax/PKGBUILD.vim/">
        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://assets3.github.com/images/icons/txt.png?9be3b31760b2ed1e0983740b292778ab7067fa37" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>242 lines (188 sloc)</span>
                
                <span>10.136 kb</span>
              </div>
              <ul class="actions">
                
                  <li><a class="file-edit-link" href="#" rel="/vim-scripts/PKGBUILD/file-edit/__ref__/syntax/PKGBUILD.vim">edit</a></li>
                
                <li><a href="/vim-scripts/PKGBUILD/raw/master/syntax/PKGBUILD.vim" id="raw-url">raw</a></li>
                
                  <li><a href="/vim-scripts/PKGBUILD/blame/master/syntax/PKGBUILD.vim">blame</a></li>
                
                <li><a href="/vim-scripts/PKGBUILD/commits/master/syntax/PKGBUILD.vim">history</a></li>
              </ul>
            </div>
            
  <div class="data type-vim">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
<span id="LID74" rel="#L74">74</span>
<span id="LID75" rel="#L75">75</span>
<span id="LID76" rel="#L76">76</span>
<span id="LID77" rel="#L77">77</span>
<span id="LID78" rel="#L78">78</span>
<span id="LID79" rel="#L79">79</span>
<span id="LID80" rel="#L80">80</span>
<span id="LID81" rel="#L81">81</span>
<span id="LID82" rel="#L82">82</span>
<span id="LID83" rel="#L83">83</span>
<span id="LID84" rel="#L84">84</span>
<span id="LID85" rel="#L85">85</span>
<span id="LID86" rel="#L86">86</span>
<span id="LID87" rel="#L87">87</span>
<span id="LID88" rel="#L88">88</span>
<span id="LID89" rel="#L89">89</span>
<span id="LID90" rel="#L90">90</span>
<span id="LID91" rel="#L91">91</span>
<span id="LID92" rel="#L92">92</span>
<span id="LID93" rel="#L93">93</span>
<span id="LID94" rel="#L94">94</span>
<span id="LID95" rel="#L95">95</span>
<span id="LID96" rel="#L96">96</span>
<span id="LID97" rel="#L97">97</span>
<span id="LID98" rel="#L98">98</span>
<span id="LID99" rel="#L99">99</span>
<span id="LID100" rel="#L100">100</span>
<span id="LID101" rel="#L101">101</span>
<span id="LID102" rel="#L102">102</span>
<span id="LID103" rel="#L103">103</span>
<span id="LID104" rel="#L104">104</span>
<span id="LID105" rel="#L105">105</span>
<span id="LID106" rel="#L106">106</span>
<span id="LID107" rel="#L107">107</span>
<span id="LID108" rel="#L108">108</span>
<span id="LID109" rel="#L109">109</span>
<span id="LID110" rel="#L110">110</span>
<span id="LID111" rel="#L111">111</span>
<span id="LID112" rel="#L112">112</span>
<span id="LID113" rel="#L113">113</span>
<span id="LID114" rel="#L114">114</span>
<span id="LID115" rel="#L115">115</span>
<span id="LID116" rel="#L116">116</span>
<span id="LID117" rel="#L117">117</span>
<span id="LID118" rel="#L118">118</span>
<span id="LID119" rel="#L119">119</span>
<span id="LID120" rel="#L120">120</span>
<span id="LID121" rel="#L121">121</span>
<span id="LID122" rel="#L122">122</span>
<span id="LID123" rel="#L123">123</span>
<span id="LID124" rel="#L124">124</span>
<span id="LID125" rel="#L125">125</span>
<span id="LID126" rel="#L126">126</span>
<span id="LID127" rel="#L127">127</span>
<span id="LID128" rel="#L128">128</span>
<span id="LID129" rel="#L129">129</span>
<span id="LID130" rel="#L130">130</span>
<span id="LID131" rel="#L131">131</span>
<span id="LID132" rel="#L132">132</span>
<span id="LID133" rel="#L133">133</span>
<span id="LID134" rel="#L134">134</span>
<span id="LID135" rel="#L135">135</span>
<span id="LID136" rel="#L136">136</span>
<span id="LID137" rel="#L137">137</span>
<span id="LID138" rel="#L138">138</span>
<span id="LID139" rel="#L139">139</span>
<span id="LID140" rel="#L140">140</span>
<span id="LID141" rel="#L141">141</span>
<span id="LID142" rel="#L142">142</span>
<span id="LID143" rel="#L143">143</span>
<span id="LID144" rel="#L144">144</span>
<span id="LID145" rel="#L145">145</span>
<span id="LID146" rel="#L146">146</span>
<span id="LID147" rel="#L147">147</span>
<span id="LID148" rel="#L148">148</span>
<span id="LID149" rel="#L149">149</span>
<span id="LID150" rel="#L150">150</span>
<span id="LID151" rel="#L151">151</span>
<span id="LID152" rel="#L152">152</span>
<span id="LID153" rel="#L153">153</span>
<span id="LID154" rel="#L154">154</span>
<span id="LID155" rel="#L155">155</span>
<span id="LID156" rel="#L156">156</span>
<span id="LID157" rel="#L157">157</span>
<span id="LID158" rel="#L158">158</span>
<span id="LID159" rel="#L159">159</span>
<span id="LID160" rel="#L160">160</span>
<span id="LID161" rel="#L161">161</span>
<span id="LID162" rel="#L162">162</span>
<span id="LID163" rel="#L163">163</span>
<span id="LID164" rel="#L164">164</span>
<span id="LID165" rel="#L165">165</span>
<span id="LID166" rel="#L166">166</span>
<span id="LID167" rel="#L167">167</span>
<span id="LID168" rel="#L168">168</span>
<span id="LID169" rel="#L169">169</span>
<span id="LID170" rel="#L170">170</span>
<span id="LID171" rel="#L171">171</span>
<span id="LID172" rel="#L172">172</span>
<span id="LID173" rel="#L173">173</span>
<span id="LID174" rel="#L174">174</span>
<span id="LID175" rel="#L175">175</span>
<span id="LID176" rel="#L176">176</span>
<span id="LID177" rel="#L177">177</span>
<span id="LID178" rel="#L178">178</span>
<span id="LID179" rel="#L179">179</span>
<span id="LID180" rel="#L180">180</span>
<span id="LID181" rel="#L181">181</span>
<span id="LID182" rel="#L182">182</span>
<span id="LID183" rel="#L183">183</span>
<span id="LID184" rel="#L184">184</span>
<span id="LID185" rel="#L185">185</span>
<span id="LID186" rel="#L186">186</span>
<span id="LID187" rel="#L187">187</span>
<span id="LID188" rel="#L188">188</span>
<span id="LID189" rel="#L189">189</span>
<span id="LID190" rel="#L190">190</span>
<span id="LID191" rel="#L191">191</span>
<span id="LID192" rel="#L192">192</span>
<span id="LID193" rel="#L193">193</span>
<span id="LID194" rel="#L194">194</span>
<span id="LID195" rel="#L195">195</span>
<span id="LID196" rel="#L196">196</span>
<span id="LID197" rel="#L197">197</span>
<span id="LID198" rel="#L198">198</span>
<span id="LID199" rel="#L199">199</span>
<span id="LID200" rel="#L200">200</span>
<span id="LID201" rel="#L201">201</span>
<span id="LID202" rel="#L202">202</span>
<span id="LID203" rel="#L203">203</span>
<span id="LID204" rel="#L204">204</span>
<span id="LID205" rel="#L205">205</span>
<span id="LID206" rel="#L206">206</span>
<span id="LID207" rel="#L207">207</span>
<span id="LID208" rel="#L208">208</span>
<span id="LID209" rel="#L209">209</span>
<span id="LID210" rel="#L210">210</span>
<span id="LID211" rel="#L211">211</span>
<span id="LID212" rel="#L212">212</span>
<span id="LID213" rel="#L213">213</span>
<span id="LID214" rel="#L214">214</span>
<span id="LID215" rel="#L215">215</span>
<span id="LID216" rel="#L216">216</span>
<span id="LID217" rel="#L217">217</span>
<span id="LID218" rel="#L218">218</span>
<span id="LID219" rel="#L219">219</span>
<span id="LID220" rel="#L220">220</span>
<span id="LID221" rel="#L221">221</span>
<span id="LID222" rel="#L222">222</span>
<span id="LID223" rel="#L223">223</span>
<span id="LID224" rel="#L224">224</span>
<span id="LID225" rel="#L225">225</span>
<span id="LID226" rel="#L226">226</span>
<span id="LID227" rel="#L227">227</span>
<span id="LID228" rel="#L228">228</span>
<span id="LID229" rel="#L229">229</span>
<span id="LID230" rel="#L230">230</span>
<span id="LID231" rel="#L231">231</span>
<span id="LID232" rel="#L232">232</span>
<span id="LID233" rel="#L233">233</span>
<span id="LID234" rel="#L234">234</span>
<span id="LID235" rel="#L235">235</span>
<span id="LID236" rel="#L236">236</span>
<span id="LID237" rel="#L237">237</span>
<span id="LID238" rel="#L238">238</span>
<span id="LID239" rel="#L239">239</span>
<span id="LID240" rel="#L240">240</span>
<span id="LID241" rel="#L241">241</span>
<span id="LID242" rel="#L242">242</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c">" Vim syntax file</span></div><div class='line' id='LC2'><span class="c">" Language:     PKGBUILD</span></div><div class='line' id='LC3'><span class="c">" Maintainer:   Alessio &#39;mOLOk&#39; Bolognino &lt;themolok at gmail.com&gt;</span></div><div class='line' id='LC4'><span class="c">" Last Change:  2007/05/08</span></div><div class='line' id='LC5'><span class="c">" Version Info: PKGBUILD-0.2 (colorphobic)</span></div><div class='line' id='LC6'><br/></div><div class='line' id='LC7'><span class="c">" For version 5.x: Clear all syntax items</span></div><div class='line' id='LC8'><span class="c">" For version 6.x: Quit when a syntax file was already loaded</span></div><div class='line' id='LC9'><span class="k">if</span> version <span class="p">&lt;</span> <span class="m">600</span></div><div class='line' id='LC10'>	<span class="nb">syntax</span> clear</div><div class='line' id='LC11'><span class="k">elseif</span> exists<span class="p">(</span><span class="s2">"b:current_syntax"</span><span class="p">)</span></div><div class='line' id='LC12'>	<span class="k">finish</span></div><div class='line' id='LC13'><span class="k">endif</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'><span class="k">let</span> <span class="k">b</span>:main_syntax <span class="p">=</span> <span class="c">"sh"</span></div><div class='line' id='LC16'>runtime<span class="p">!</span> <span class="nb">syntax</span>/<span class="k">sh</span>.<span class="k">vim</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><span class="c">" case on</span></div><div class='line' id='LC19'><span class="nb">syn</span> case <span class="k">match</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="c">" pkgname</span></div><div class='line' id='LC22'><span class="c">" FIXME if &#39;=&#39; is in pkgname/pkgver, it highlights whole string, not just &#39;=&#39;</span></div><div class='line' id='LC23'><span class="nb">syn</span> keyword pb_k_pkgname pkgname contained</div><div class='line' id='LC24'><span class="nb">syn</span> <span class="k">match</span> pbValidPkgname <span class="sr">/\([[:alnum:]]\|+\|-\|_\){,32}/</span> contained contains<span class="p">=</span>pbIllegalPkgname</div><div class='line' id='LC25'><span class="nb">syn</span> <span class="k">match</span> pbIllegalPkgname <span class="sr">/[[:upper:]]\|[^[:alnum:]-+_=]\|=.*=\|=[&#39;"]\?.\{33,\}[&#39;"]\?/</span> contained</div><div class='line' id='LC26'><span class="nb">syn</span> <span class="k">match</span> pbPkgnameGroup <span class="sr">/^pkgname=.*/</span> contains<span class="p">=</span>pbIllegalPkgname<span class="p">,</span>pb_k_pkgname<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="c">" pkgver</span></div><div class='line' id='LC29'><span class="nb">syn</span> keyword pb_k_pkgver pkgver contained</div><div class='line' id='LC30'><span class="nb">syn</span> <span class="k">match</span> pbValidPkgver <span class="sr">/\([[:alnum:]]\|\.\|+\|_\)/</span> contained contains<span class="p">=</span>pbIllegalPkgver</div><div class='line' id='LC31'><span class="nb">syn</span> <span class="k">match</span> pbIllegalPkgver <span class="sr">/[^[:alnum:]+=\.\_]\|=.*=/</span> contained</div><div class='line' id='LC32'><span class="nb">syn</span> <span class="k">match</span> pbPkgverGroup <span class="sr">/^pkgver=.*/</span> contains<span class="p">=</span>pbIllegalPkgver<span class="p">,</span>pbValidPkgver<span class="p">,</span>pb_k_pkgver<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'><span class="c">" pkgrel</span></div><div class='line' id='LC35'><span class="nb">syn</span> keyword pb_k_pkgrel pkgrel contained</div><div class='line' id='LC36'><span class="nb">syn</span> <span class="k">match</span> pbValidPkgrel <span class="sr">/[[:digit:]]*/</span> contained contains<span class="p">=</span>pbIllegalPkgver</div><div class='line' id='LC37'><span class="nb">syn</span> <span class="k">match</span> pbIllegalPkgrel <span class="sr">/[^[:digit:]=]\|=.*=/</span> contained</div><div class='line' id='LC38'><span class="nb">syn</span> <span class="k">match</span> pbPkgrelGroup <span class="sr">/^pkgrel=.*/</span> contains<span class="p">=</span>pbIllegalPkgrel<span class="p">,</span>pbValidPkgrel<span class="p">,</span>pb_k_pkgrel<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="c">" pkgdesc</span></div><div class='line' id='LC41'><span class="nb">syn</span> keyword pb_k_desc pkgdesc contained</div><div class='line' id='LC42'><span class="c">" 90 chars: 80 for description, 8 for pkgdesc and 2 for &#39;&#39;</span></div><div class='line' id='LC43'><span class="nb">syn</span> <span class="k">match</span> pbIllegalPkgdesc <span class="sr">/.\{90,}\|=[&#39;"]\?.*[&#39;" ]\+[iI][sS] [aA]/</span> contained contains<span class="p">=</span>pbPkgdescSign</div><div class='line' id='LC44'><span class="nb">syn</span> <span class="k">match</span> pbValidPkgdesc <span class="sr">/[^=&#39;"]\.\{,80}/</span> contained contains<span class="p">=</span>pbIllegalPkgdesc</div><div class='line' id='LC45'><span class="nb">syn</span> <span class="k">match</span> pbPkgdescGroup <span class="sr">/^pkgdesc=.*/</span> contains<span class="p">=</span>pbIllegalPkgdesc<span class="p">,</span>pb_k_desc<span class="p">,</span>pbValidPkgdesc<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC46'><span class="nb">syn</span> <span class="k">match</span> pbPkgdescSign <span class="sr">/[=&#39;"]/</span> contained</div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="c">" url</span></div><div class='line' id='LC49'><span class="nb">syn</span> keyword pb_k_url url contained</div><div class='line' id='LC50'><span class="nb">syn</span> <span class="k">match</span> pbValidUrl <span class="sr">/[&#39;"]*\(https\|http\|ftp\)\:\/.*\.\+.*/</span> contained</div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="nb">syn</span> <span class="k">match</span> pbIllegalUrl <span class="sr">/[^=]/</span> contained contains<span class="p">=</span>pbValidUrl</div><div class='line' id='LC53'><span class="nb">syn</span> <span class="k">match</span> pbUrlGroup <span class="sr">/^url=.*/</span> contains<span class="p">=</span>pbValidUrl<span class="p">,</span>pb_k_url<span class="p">,</span>pbIllegalUrl<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC54'><br/></div><div class='line' id='LC55'><span class="c">" license</span></div><div class='line' id='LC56'><span class="nb">syn</span> keyword pb_k_license license contained</div><div class='line' id='LC57'><span class="nb">syn</span> keyword pbLicense  APACHE CDDL EPL FDL GPL LGPL MPL PHP RUBY ZLIB ISC MIT BSD contained</div><div class='line' id='LC58'><span class="nb">syn</span> <span class="k">match</span> pbLicenseCustom <span class="sr">/custom\(:[[:alnum:]]*\)*/</span> contained</div><div class='line' id='LC59'><span class="nb">syn</span> <span class="k">match</span> pbIllegalLicense <span class="sr">/[^=&#39;"() ]/</span> contained contains<span class="p">=</span>pbLicenseCustom<span class="p">,</span>pbLicense</div><div class='line' id='LC60'><span class="nb">syn</span> region pbLicenseGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^license=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_license<span class="p">,</span>pbLicenseCustom<span class="p">,</span>pbLicense<span class="p">,</span>pbIllegalLicense</div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'><span class="c">" backup</span></div><div class='line' id='LC63'><span class="nb">syn</span> keyword pb_k_backup <span class="nb">backup</span> contained</div><div class='line' id='LC64'><span class="nb">syn</span> <span class="k">match</span> pbValidBackup   <span class="sr">/\.\?[[:alpha:]]*\/[[:alnum:]\{\}+._$-]*]*/</span> contained</div><div class='line' id='LC65'><span class="nb">syn</span> region pbBackupGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^backup=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_backup<span class="p">,</span>pbValidBackup<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'><span class="c">" arch</span></div><div class='line' id='LC68'><span class="nb">syn</span> keyword pb_k_arch arch contained</div><div class='line' id='LC69'><span class="nb">syn</span> keyword pbArch i686 x86_64 ppc contained</div><div class='line' id='LC70'><span class="nb">syn</span> <span class="k">match</span> pbIllegalArch <span class="sr">/[^=&#39;"() ]/</span> contained contains<span class="p">=</span>pbArch</div><div class='line' id='LC71'><span class="nb">syn</span> region pbArchGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^arch=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_arch<span class="p">,</span>pbArch<span class="p">,</span>pbIllegalArch</div><div class='line' id='LC72'><br/></div><div class='line' id='LC73'><span class="c">" groups</span></div><div class='line' id='LC74'><span class="nb">syn</span> keyword pb_k_groups groups contained</div><div class='line' id='LC75'><span class="nb">syn</span> <span class="k">match</span> pbValidGroups <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC76'><span class="nb">syn</span> region pbGroupsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^groups=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_groups<span class="p">,</span>pbValidGroups<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC77'><br/></div><div class='line' id='LC78'><span class="c">" depends</span></div><div class='line' id='LC79'><span class="nb">syn</span> keyword pb_k_depends depends contained</div><div class='line' id='LC80'><span class="nb">syn</span> <span class="k">match</span> pbValidDepends <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC81'><span class="nb">syn</span> region pbDependsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^depends=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_depends<span class="p">,</span>pbValidDepends<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="c">" makedepends</span></div><div class='line' id='LC84'><span class="nb">syn</span> keyword pb_k_makedepends makedepends contained</div><div class='line' id='LC85'><span class="nb">syn</span> <span class="k">match</span> pbValidMakedepends <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC86'><span class="nb">syn</span> region pbMakedependsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^makedepends=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_makedepends<span class="p">,</span>pbValidMakedepends<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><span class="c">" optdepends</span></div><div class='line' id='LC89'><span class="nb">syn</span> keyword pb_k_optdepends optdepends contained</div><div class='line' id='LC90'><span class="nb">syn</span> <span class="k">match</span> pbValidOptdepends <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC91'><span class="nb">syn</span> region pbOptdependsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^optdepends=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_optdepends<span class="p">,</span>pbValidOptdepends<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC92'><br/></div><div class='line' id='LC93'><span class="c">" conflicts</span></div><div class='line' id='LC94'><span class="nb">syn</span> keyword pb_k_conflicts conflicts contained</div><div class='line' id='LC95'><span class="nb">syn</span> <span class="k">match</span> pbValidConflicts <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC96'><span class="nb">syn</span> region pbConflictsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^conflicts=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_conflicts<span class="p">,</span>pbValidConflicts<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'><span class="c">" provides</span></div><div class='line' id='LC99'><span class="nb">syn</span> keyword pb_k_provides provides contained</div><div class='line' id='LC100'><span class="nb">syn</span> <span class="k">match</span> pbValidProvides <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC101'><span class="nb">syn</span> region pbProvidesGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^provides=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_provides<span class="p">,</span>pbValidProvides<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="c">" replaces</span></div><div class='line' id='LC104'><span class="nb">syn</span> keyword pb_k_replaces replaces contained</div><div class='line' id='LC105'><span class="nb">syn</span> <span class="k">match</span> pbValidReplaces <span class="sr">/\([[:alnum:]]\|+\|-\|_\)*/</span> contained</div><div class='line' id='LC106'><span class="nb">syn</span> region pbReplacesGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^replaces=(/</span>  <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_replaces<span class="p">,</span>pbValidReplaces<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC107'><br/></div><div class='line' id='LC108'><span class="c">" install</span></div><div class='line' id='LC109'><span class="c">" XXX remove install from bashStatement, fix strange bug</span></div><div class='line' id='LC110'><span class="nb">syn</span> clear bashStatement</div><div class='line' id='LC111'><span class="nb">syn</span> keyword bashStatement chmod clear <span class="nb">complete</span> du egrep expr fgrep find gnufind gnugrep <span class="k">grep</span> less <span class="k">ls</span> mkdir mv rm rmdir rpm sed sleep <span class="k">sort</span> strip tail touch</div><div class='line' id='LC112'><br/></div><div class='line' id='LC113'><span class="nb">syn</span> keyword pb_k_install install contained</div><div class='line' id='LC114'><span class="nb">syn</span> <span class="k">match</span> pbValidInstall <span class="sr">/\([[:alnum:]]\|\$\|+\|-\|_\)*\.install/</span> contained</div><div class='line' id='LC115'><span class="nb">syn</span> <span class="k">match</span> pbIllegalInstall <span class="sr">/[^=]/</span> contained contains<span class="p">=</span>pbValidInstall</div><div class='line' id='LC116'><span class="nb">syn</span> <span class="k">match</span> pbInstallGroup <span class="sr">/^install=.*/</span> contains<span class="p">=</span>pb_k_install<span class="p">,</span>pbValidInstall<span class="p">,</span>pbIllegalInstall<span class="p">,</span>shDeref<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC117'><br/></div><div class='line' id='LC118'><span class="c">" source:</span></div><div class='line' id='LC119'><span class="c">" XXX remove source from shStatement, fix strange bug</span></div><div class='line' id='LC120'><span class="nb">syn</span> clear shStatement</div><div class='line' id='LC121'><span class="nb">syn</span> keyword shStatement xxx wait getopts <span class="k">return</span> autoload whence printf true popd nohup enable <span class="k">r</span> trap <span class="nb">readonly</span> fc fg kill ulimit umask disown stop pushd <span class="k">read</span> <span class="k">history</span> logout times local <span class="k">exit</span> test <span class="k">pwd</span> time eval integer <span class="k">suspend</span> dirs shopt hash false newgrp <span class="nb">bg</span> print jobs continue functions exec help <span class="k">cd</span> <span class="k">break</span> unalias <span class="k">chdir</span> type shift builtin <span class="k">let</span> bind</div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'><span class="nb">syn</span> keyword pb_k_source source contained</div><div class='line' id='LC124'><span class="nb">syn</span> <span class="k">match</span> pbIllegalSource <span class="sr">/\(http\|ftp\|https\).*\.\+\(dl\|download.\?\)\.\(sourceforge\|sf\).net/</span></div><div class='line' id='LC125'><span class="nb">syn</span> region pbSourceGroup  <span class="k">start</span><span class="p">=</span><span class="sr">/^source=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_source<span class="p">,</span>pbIllegalSource<span class="p">,</span>shNumber<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote<span class="p">,</span>pbDerefEmulation</div><div class='line' id='LC126'><span class="nb">syn</span> <span class="k">match</span> pbDerefEmulation <span class="sr">/\$[{]\?[[:alnum:]_]*[}]\?/</span> contained</div><div class='line' id='LC127'><span class="nb">hi</span> <span class="nb">def</span> link pbDerefEmulation PreProc</div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'><span class="c">" md5sums</span></div><div class='line' id='LC130'><br/></div><div class='line' id='LC131'><span class="nb">syn</span> keyword pb_k_md5sums md5sums contained</div><div class='line' id='LC132'><span class="nb">syn</span> <span class="k">match</span> pbIllegalMd5sums <span class="sr">/[^=&#39;"()\/ ]/</span> contained contains<span class="p">=</span>pbValidMd5sums</div><div class='line' id='LC133'><span class="nb">syn</span> <span class="k">match</span> pbValidMd5sums <span class="sr">/[[:alnum:]]\{32\}/</span> contained</div><div class='line' id='LC134'><span class="nb">syn</span> region pbMd5sumsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^md5sums/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_md5sums<span class="p">,</span>pbMd5Quotes<span class="p">,</span>pbMd5Hash<span class="p">,</span>pbIllegalMd5sums keepend</div><div class='line' id='LC135'><span class="nb">syn</span> <span class="k">match</span> pbMd5Quotes <span class="sr">/&#39;.*&#39;\|".*"/</span> contained contains<span class="p">=</span>pbMd5Hash<span class="p">,</span>pbIllegalMd5sums</div><div class='line' id='LC136'><span class="nb">syn</span> <span class="k">match</span> pbMd5Hash <span class="sr">/[[:alnum:]]\+/</span> contained contains<span class="p">=</span>pbValidMd5sums</div><div class='line' id='LC137'><span class="nb">hi</span> <span class="nb">def</span> link pbMd5Quotes Keyword</div><div class='line' id='LC138'><span class="nb">hi</span> <span class="nb">def</span> link pbMd5Hash Error</div><div class='line' id='LC139'><span class="nb">hi</span> <span class="nb">def</span> link pbValidMd5sums  Number</div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'><span class="c">" sha1sums</span></div><div class='line' id='LC142'><span class="nb">syn</span> keyword pb_k_sha1sums sha1sums contained</div><div class='line' id='LC143'><span class="nb">syn</span> <span class="k">match</span> pbIllegalSha1sums <span class="sr">/[^=&#39;"()\/ ]/</span> contained contains<span class="p">=</span>pbValidSha1sums</div><div class='line' id='LC144'><span class="nb">syn</span> <span class="k">match</span> pbValidSha1sums <span class="sr">/[[:alnum:]]\{40\}/</span> contained</div><div class='line' id='LC145'><span class="nb">syn</span> region pbSha1sumsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^sha1sums/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_sha1sums<span class="p">,</span>pbSha1Quotes<span class="p">,</span>pbSha1Hash<span class="p">,</span>pbIllegalSha1sums keepend</div><div class='line' id='LC146'><span class="nb">syn</span> <span class="k">match</span> pbSha1Quotes <span class="sr">/&#39;.*&#39;\|".*"/</span> contained contains<span class="p">=</span>pbSha1Hash<span class="p">,</span>pbIllegalSha1sums</div><div class='line' id='LC147'><span class="nb">syn</span> <span class="k">match</span> pbSha1Hash <span class="sr">/[[:alnum:]]\+/</span> contained contains<span class="p">=</span>pbValidSha1sums</div><div class='line' id='LC148'><span class="nb">hi</span> <span class="nb">def</span> link pbSha1Quotes Keyword</div><div class='line' id='LC149'><span class="nb">hi</span> <span class="nb">def</span> link pbSha1Hash Error</div><div class='line' id='LC150'><span class="nb">hi</span> <span class="nb">def</span> link pbValidSha1sums  Number</div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="c">" options</span></div><div class='line' id='LC153'><span class="nb">syn</span> keyword pb_k_options <span class="k">options</span> contained</div><div class='line' id='LC154'><span class="nb">syn</span> <span class="k">match</span> pbOptions <span class="sr">/\(no\)\?\(strip\|docs\|libtool\|emptydirs\|zipman\|ccache\|distcc\|makeflags\|force\)/</span> contained</div><div class='line' id='LC155'><span class="nb">syn</span> <span class="k">match</span>   pbOptionsNeg     <span class="sr">/\!/</span> contained</div><div class='line' id='LC156'><span class="nb">syn</span> <span class="k">match</span>   pbOptionsDeprec  <span class="sr">/no/</span> contained</div><div class='line' id='LC157'><span class="nb">syn</span> region pbOptionsGroup <span class="k">start</span><span class="p">=</span><span class="sr">/^options=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_options<span class="p">,</span>pbOptions<span class="p">,</span>pbOptionsNeg<span class="p">,</span>pbOptionsDeprec<span class="p">,</span>pbIllegalOption<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC158'><span class="nb">syn</span> <span class="k">match</span> pbIllegalOption <span class="sr">/[^!"&#39;()= ]/</span> contained contains<span class="p">=</span>pbOptionsDeprec<span class="p">,</span>pbOptions</div><div class='line' id='LC159'><br/></div><div class='line' id='LC160'><span class="c">" noextract</span></div><div class='line' id='LC161'><span class="nb">syn</span> <span class="k">match</span> pbNoextract <span class="sr">/[[:alnum:]+._${}-]\+/</span> contained</div><div class='line' id='LC162'><span class="nb">syn</span> keyword pb_k_noextract noextract  contained</div><div class='line' id='LC163'><span class="nb">syn</span> region pbNoextractGroup  <span class="k">start</span><span class="p">=</span><span class="sr">/^noextract=(/</span> <span class="k">end</span><span class="p">=</span><span class="sr">/)/</span> contains<span class="p">=</span>pb_k_noextract<span class="p">,</span>pbNoextract<span class="p">,</span>shDoubleQuote<span class="p">,</span>shSingleQuote</div><div class='line' id='LC164'><br/></div><div class='line' id='LC165'><span class="c">" comments</span></div><div class='line' id='LC166'><span class="nb">syn</span> keyword    pb_k_maintainer Maintainer Contributor contained</div><div class='line' id='LC167'><span class="nb">syn</span> <span class="k">match</span>      pbMaintainerGroup <span class="sr">/Maintainer.*/</span> contains<span class="p">=</span>pbMaintainer contained</div><div class='line' id='LC168'><br/></div><div class='line' id='LC169'><span class="nb">syn</span> <span class="k">match</span> pbDate <span class="sr">/[0-9]\{4}\/[0-9]\{2}\/[0-9]\{2}/</span> contained</div><div class='line' id='LC170'><br/></div><div class='line' id='LC171'><span class="nb">syn</span> cluster    pbCommentGroup	contains<span class="p">=</span>pbTodo<span class="p">,</span>pb_k_maintainer<span class="p">,</span>pbMaintainerGroup<span class="p">,</span>pbDate</div><div class='line' id='LC172'><span class="nb">syn</span> keyword    pbTodo	contained	COMBAK FIXME TODO XXX</div><div class='line' id='LC173'><span class="nb">syn</span> <span class="k">match</span>      pbComment	<span class="c">"^#.*$"	contains=@pbCommentGroup</span></div><div class='line' id='LC174'><span class="nb">syn</span> <span class="k">match</span>      pbComment	<span class="c">"[^0-9]#.*$"	contains=@pbCommentGroup</span></div><div class='line' id='LC175'><br/></div><div class='line' id='LC176'><span class="c">" quotes are handled by sh.vim</span></div><div class='line' id='LC177'><br/></div><div class='line' id='LC178'><span class="nb">hi</span> <span class="nb">def</span> link pbComment Comment</div><div class='line' id='LC179'><span class="nb">hi</span> <span class="nb">def</span> link pbTodo Todo</div><div class='line' id='LC180'><br/></div><div class='line' id='LC181'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalPkgname Error</div><div class='line' id='LC182'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_pkgname pbKeywords</div><div class='line' id='LC183'><br/></div><div class='line' id='LC184'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalPkgver Error</div><div class='line' id='LC185'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_pkgver pbKeywords</div><div class='line' id='LC186'><br/></div><div class='line' id='LC187'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalPkgrel Error</div><div class='line' id='LC188'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_pkgrel pbKeywords</div><div class='line' id='LC189'><br/></div><div class='line' id='LC190'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalPkgdesc Error</div><div class='line' id='LC191'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_desc pbKeywords</div><div class='line' id='LC192'><br/></div><div class='line' id='LC193'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalUrl Error</div><div class='line' id='LC194'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_url pbKeywords</div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_license pbKeywords</div><div class='line' id='LC197'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalLicense Error</div><div class='line' id='LC198'><br/></div><div class='line' id='LC199'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_backup pbKeywords</div><div class='line' id='LC200'><br/></div><div class='line' id='LC201'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_arch pbKeywords</div><div class='line' id='LC202'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalArch Error</div><div class='line' id='LC203'><br/></div><div class='line' id='LC204'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_groups pbKeywords</div><div class='line' id='LC205'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_makedepends pbKeywords</div><div class='line' id='LC206'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_optdepends pbKeywords</div><div class='line' id='LC207'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_depends pbKeywords</div><div class='line' id='LC208'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_replaces pbKeywords</div><div class='line' id='LC209'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_conflicts pbKeywords</div><div class='line' id='LC210'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_provides pbKeywords</div><div class='line' id='LC211'><br/></div><div class='line' id='LC212'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalInstall Error</div><div class='line' id='LC213'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_install pbKeywords</div><div class='line' id='LC214'><br/></div><div class='line' id='LC215'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_source pbKeywords</div><div class='line' id='LC216'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalSource Error</div><div class='line' id='LC217'><br/></div><div class='line' id='LC218'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_md5sums pbKeywords</div><div class='line' id='LC219'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalMd5sums Error</div><div class='line' id='LC220'><br/></div><div class='line' id='LC221'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_sha1sums pbKeywords</div><div class='line' id='LC222'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalSha1sums Error</div><div class='line' id='LC223'><br/></div><div class='line' id='LC224'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_options pbKeywords</div><div class='line' id='LC225'><span class="nb">hi</span> <span class="nb">def</span> link pbOptionsDeprec Todo</div><div class='line' id='LC226'><span class="nb">hi</span> <span class="nb">def</span> link pbIllegalOption Error</div><div class='line' id='LC227'><br/></div><div class='line' id='LC228'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_noextract pbKeywords</div><div class='line' id='LC229'><span class="nb">hi</span> <span class="nb">def</span> link pbNoextract Normal</div><div class='line' id='LC230'><br/></div><div class='line' id='LC231'><span class="nb">hi</span> <span class="nb">def</span> link pb_k_maintainer pbKeywords</div><div class='line' id='LC232'><br/></div><div class='line' id='LC233'><span class="nb">hi</span> <span class="nb">def</span> link pbKeywords Keyword</div><div class='line' id='LC234'><br/></div><div class='line' id='LC235'><span class="nb">hi</span> <span class="nb">def</span> link pbDate Special</div><div class='line' id='LC236'><br/></div><div class='line' id='LC237'><span class="c">"syntax include @SHELL syntax/sh.vim</span></div><div class='line' id='LC238'><span class="c">"syntax region BUILD start=/^build()/ end=/^}/ contains=@SHELL</span></div><div class='line' id='LC239'><span class="c">"let b:current_syntax = "PKGBUILD"</span></div><div class='line' id='LC240'><br/></div><div class='line' id='LC241'><span class="c">" vim: ft=vim</span></div><div class='line' id='LC242'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


          </div>
        </div>
      </div>
    </div>
  

  </div>



<div class="frame frame-loading" style="display:none;">
  <img src="/images/modules/ajax/big_spinner_336699.gif">
</div>
    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="https://assets0.github.com/images/modules/footer/rackspace_logo.png?v2?9be3b31760b2ed1e0983740b292778ab7067fa37" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2010 <span id="_rrt" title="0.04877s from fe6.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
              
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
              
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
              
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
              
                  <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
              
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                  
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                  
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                  
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                  
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                  
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                  
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                  
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                  
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                  
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "6943c02a1f90e438627d1427769d0f73862dc844"</script>
    <div id="keyboard_shortcuts_pane" style="display:none">
  <h2>Keyboard Shortcuts</h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->
  </div><!-- /.columns.equacols -->

  <div class="rule"></div>

  <h3>Issues</h3>

  <div class="columns threecols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>x</dt>
        <dd>Toggle select target</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <dl class="keyboard-mappings">
        <dt>I</dt>
        <dd>Mark selected as read</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>U</dt>
        <dd>Mark selected as unread</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>e</dt>
        <dd>Close selected</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Remove selected from view</dd>
      </dl>
    </div><!-- /.column.middle -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>c</dt>
        <dd>Create issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>l</dt>
        <dd>Create label</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>i</dt>
        <dd>Back to inbox</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>u</dt>
        <dd>Back to issues</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>/</dt>
        <dd>Focus issues search</dd>
      </dl>
    </div>
  </div>

  <div class="rule"></div>

  <h3>Network Graph</h3>
  <div class="columns equacols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>← <em>or</em> h</dt>
        <dd>Scroll left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>→ <em>or</em> l</dt>
        <dd>Scroll right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↑ <em>or</em> k</dt>
        <dd>Scroll up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↓ <em>or</em> j</dt>
        <dd>Scroll down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Toggle visibility of head labels</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>shift ← <em>or</em> shift h</dt>
        <dd>Scroll all the way left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift → <em>or</em> shift l</dt>
        <dd>Scroll all the way right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↑ <em>or</em> shift k</dt>
        <dd>Scroll all the way up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↓ <em>or</em> shift j</dt>
        <dd>Scroll all the way down</dd>
      </dl>
    </div><!-- /.column.last -->
  </div>

</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice-signup-button', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>

