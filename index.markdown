---

# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
title: Homepage

---

<head>
    <script src='//unpkg.com/valine/dist/Valine.min.js'></script>
</head>

### post
at the bottom of the page

comments below
<br/>
### plan
[overview](https://github.com/FinalFantasy27/plan)
- [Conceptual Developments of Early 20th Century Mathematical Logic](https://github.com/FinalFantasy27/plan/blob/main/Conceptual%20Developments%20of%20Early%2020th%20Century%20Mathematical%20Logic)
- [Vision](https://github.com/FinalFantasy27/plan/blob/main/Vision%20%E5%B9%BB%E5%A2%83)
- [白与褐](https://github.com/FinalFantasy27/plan/blob/main/%E7%99%BD%E4%B8%8E%E8%A4%90)
- [世界末日前五天](https://github.com/FinalFantasy27/plan/blob/main/%E4%B8%96%E7%95%8C%E6%9C%AB%E6%97%A5%E5%89%8D%E4%BA%94%E5%A4%A9)
- [小偷](https://github.com/FinalFantasy27/plan/blob/main/%E5%B0%8F%E5%81%B7)
- [旅行·分手](https://github.com/FinalFantasy27/plan/blob/main/%E6%97%85%E8%A1%8C%C2%B7%E5%88%86%E6%89%8B)
- [伊丹的舞女](https://github.com/FinalFantasy27/plan/blob/main/%E4%BC%8A%E4%B8%B9%E7%9A%84%E8%88%9E%E5%A5%B3)
- [变形记](https://github.com/FinalFantasy27/plan/blob/main/%E5%8F%98%E5%BD%A2%E8%AE%B0)
- [恋爱事务所](https://github.com/FinalFantasy27/plan/blob/main/%E6%81%8B%E7%88%B1%E4%BA%8B%E5%8A%A1%E6%89%80)
- ......

### writing:
- [Shepherd Boy](https://finalfantasy27.github.io/writing/adaptation/2020/05/02/Shepherd-Boy.html)
- [Academia](https://scnu.academia.edu/AnduinWilde)
- [AllPoetry](https://allpoetry.com/AnduinWilde)
- [douban](https://www.douban.com/people/150548369/)
- [read.douban](https://read.douban.com/author/63731975/)
- WeChat Official Accounts: Broken the sea
- [Zhihu](https://www.zhihu.com/people/sliverwhite-47/)

### ideas 
[open source project](https://github.com/FinalFantasy27/Ideas)
<br/>
### photographs:
<img src="https://raw.githubusercontent.com/FinalFantasy27/FinalFantasy27/main/images/photo1.JPG" heigt="200" width="300" > <img src="https://raw.githubusercontent.com/FinalFantasy27/FinalFantasy27/main/images/IMG_0689.JPG" heigt="200" width="300" > <img src="https://raw.githubusercontent.com/FinalFantasy27/FinalFantasy27/main/images/0_mmexport1630249819821.jpg" heigt="300" width="200" > <img src="https://raw.githubusercontent.com/FinalFantasy27/FinalFantasy27/main/images/1_mmexport1630249822454.jpg" heigt="300" width="200" > 

[for more](https://www.douban.com/people/150548369/photos)
  
<body>  
   <!-- 同时兼容http与https -->
<script src="//cdn1.lncld.net/static/js/2.5.0/av-min.js"></script>
<script>
    // 第一个参数是appid，第二个参数是appkey，此处的只是示例
    AV.initialize("Rl0XrPgpK2Dfhp1ffLTvcrsD-gzGzoHsz", "6fXawARU0PuxwAYgRUP9gPMl");
    // 自己创建的Class的名字
    var name='Counter';
    function createRecord(Counter){
      // 设置 ACL
      var acl = new AV.ACL();
      acl.setPublicReadAccess(true);
      acl.setPublicWriteAccess(true);
      // 获得span的所有元素
      var elements=document.getElementsByClassName('leancloud_visitors');
      // 一次创建多条记录
      var allcounter=[];
      for (var i = 0; i < elements.length ; i++) {
        // 若某span的内容不包括 '-' ，则不必创建记录
        if(elements[i].textContent.indexOf('-') == -1){
          continue;
        }
        var title = elements[i].getAttribute('data-flag-title');
        var url = elements[i].id;
        var newcounter = new Counter();
        newcounter.setACL(acl);
        newcounter.set("title", title);
        newcounter.set("url", url);
        newcounter.set("time", 0);
        allcounter.push(newcounter);
        // 顺便更新显示span为默认值0
        elements[i].textContent=0;
      }
      AV.Object.saveAll(allcounter).then(function (todo) {
        // 成功保存记录之后
        console.log('创建记录成功！');
      }, function (error) {
        // 异常错误 
        console.error('创建记录失败: ' + error.message);
      });
    }
    function showCount(Counter){
      // 是否需要创建新纪录的标志（添加一篇新文章）
      var flag=false;
      var query = new AV.Query(name);
      query.greaterThanOrEqualTo('time', 0);
      query.find().then(function (results) {
        // 当获取到的记录为0时置默认值
        if(results.length==0){
          $('.leancloud_visitors').text('-');
          flag=true;
          console.log('返回查询记录为空');
          // 如果获取到空记录就创建新记录
          createRecord(Counter);
          return;
        }
        // 将获取到的数据设置为text
        for (var i = 0; i < results.length; i++) {
          var item = results[i];
          var url = item.get('url');
          var time = item.get('time');
          var element = document.getElementById(url);
          element.textContent = time;
        }
        // 当某个span含有默认值时说明需要创建记录
        if($('.leancloud_visitors').text().indexOf("-") != -1){
          flag=true;
        }
        // 当获取的记录数与span个数不吻合时
        if(results.length != $('.leancloud_visitors').length){
          flag=true;
        }
        if(flag){
          createRecord(Counter);
        }
      }, function (error) {
        console.log('query error:'+error.message);
      });
    }
    $(function() {
      var Counter = AV.Object.extend(name);
      showCount(Counter);
    });
</script>
    PageView: &nbsp;<span id="" class="leancloud_visitors" data-flag-title=""> - </span> times.
  <div id="vcomments"></div>
    <script>
        new Valine({
            el: '#vcomments',
            appId: 'Rl0XrPgpK2Dfhp1ffLTvcrsD-gzGzoHsz',
            appKey: '6fXawARU0PuxwAYgRUP9gPMl'
        })
    </script>
</body>
