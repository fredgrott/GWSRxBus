GWSRxBus
========

The data binding model and tools that google introduced leaves out something, namely how to updated
when user changes text, etc. Seems to me that it might call for using some of the  RXJava and RxAndroid
Observables sugar to handle those cases and make the event bus more streamlined and handle more use
cases.

That being said, this is a work in progress. Do not use in production just yet. Once you see releases
on this project than you can use it in production.

Usage
=====

I use jitpack to upload my libraries so you put this in your root buildscript:

```groovy
allprojects {
        repositories {
            jcenter()
            maven { url "https://jitpack.io" }
        }
   }
```
Than in the module buildscript:


```groovy
compile 'com.github.shareme:GWSRxBus:{latest-release-number}@aar'
```



Target Android API Range
========================

Api 16 to api 23.


Credits
=======

Although the code may be my own creation I am borrowing concepts and ideas from Square's Otto bus so
thanks does go to the code contributors of the Square Otto project.

Fred Grott(aka shareme  GrottWorkShop)

Former JavaME and JavaEE developer that made the transition to Android Native java Application Development.
Multi-computer-language polyglot that can jump into anything and I do not play follow-the-leader but
often follow my own unique way.(No recruiters, please for any reason)

[Github profile](https://github.com/shareme)
[Bitbucket profile](https://bitbucket.org/fredgrott)
[G+ profile](https://plus.google.com/u/0/+FredGrott/about)
[Twitter profile](https://twitter.com/fredgrott)
[Facebook profile](http://www.facebook.com/fredgrott)
[DeviantArt profile](http://shareme.deviantart.com)
[BeHance profile](https://www.behance.net/gwsfredgrott)
[Dribbble profile](https://dribbble.com/FredGrott)
[AngelList profile](https://angel.co/fred-grott)
[BuiltINChicago profile](http://www.builtinchicago.org/member/fred-grott)
[HackerNews profile](https://news.ycombinator.com/user?id=fredgrott)
[Geeklist profile](https://geekli.st/fredgrott)
[Medium profile](https://medium.com/@fredgrott)
[StackOverflow profile](http://stackoverflow.com/users/237740/fred-grott)
[Blogger blog](http://grottworkshop.blogspot.com)
[Reddit profile](http://www.reddit.com./user/fredgrott/)
[Quora profile](http://www.quora.com/Fred-Grott)
[YouTube channel](https://www.youtube.com/c/FredGrott?gvnc=1)
[AboutMe profile](https://about.me/fredgrott)
[LinkedIN profile](http://www.linkedin.com/in/shareme/en)
[Xing profile](https://www.xing.com/profile/Fred_Grott?sc_o=mxb_p)
[SlideShare profile](http://www.slideshare.net/shareme)
[SpeakerDeck profile](https://speakerdeck.com/fredgrott)
[Android Hacker Tumbler](https://www.tumblr.com/blog/androidhacker)
[Ustream](https://www.ustream.tv/manage-show/12940149)
[AboutMe](https://about.me/fredgrott)



License
=======

[Apache 2.0 License](http:;//www.apache.org/licenses/LICENSE-2.0)

Resources
=========

[Google Android Developer Site](http://developer.android.com)

[Google Android Developer Tool Site](http://tools.android.com)

[Google Android Developer Blog](http://android-developers.blogspot.com/)


[StackOverflow Android Questions](http://stackoverflow.com/questions/tagged/android)

[Gradle](http://gradle.org)

[Reddit-androidev](http://reddit.com/r/androdev/)

[AndroidChat at Slack](https://androidchat.slack.com/messages/development/)

[Amazon Android Dev Site](https://developer.amazon.com/public)

[JavaRanch Android Forum](http://www.coderanch.com/forums/f-93/Android)

[Android Development Tools G+ community](https://plus.google.com/communities/114791428968349268860)

[Android Development G+ Community](https://plus.google.com/communities/105153134372062985968)

[Android Developers G+ Community](https://plus.google.com/+AndroidDevelopers/posts)

[Android Design G+ Community](https://plus.google.com/communities/113499773637471211070)

[UX Design for Developers](https://plus.google.com/communities/103651070366324568638)

[Android MVP G+ Community](https://plus.google.com/communities/114285790907815804707)
