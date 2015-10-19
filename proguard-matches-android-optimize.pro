# This proguard file is designed to match and compliment
# using the proguard-android-optimize.txt file at
# sdk/tools/proguard/proguard-android-optimize.txt
#
# the settings in that file are:
#
#-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*
#-optimizationpasses 5
#-allowaccessmodification
#-dontpreverify
#-dontusemixedcaseclassnames
#-dontskipnonpubliclibraryclasses
#-verbose
#-keepattributes *Annotation*
#-keep public class com.google.vending.licensing.ILicensingService
#-keep public class com.android.vending.licensing.ILicensingService
#-keepclasseswithmembernames class * {
#     native <methods>;
# }
#-keepclassmembers public class * extends android.view.View {
#    void set*(***);
#    *** get*();
# }
#-keepclassmembers class * extends android.app.Activity {
#   public void *(android.view.View);
#}
#-keepclassmembers enum * {
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
#-keepclassmembers class * implements android.os.Parcelable {
#  public static final android.os.Parcelable$Creator CREATOR;
#}
#-keepclassmembers class **.R$* {
#    public static <fields>;
#}
#-dontwarn android.support.**
-dontskipnonpubliclibraryclassmembers
# OEMS with 4.x goofed up and included a common support lib in ROMS to
# avoid including with their default apps to save ROM space so to
# avoid the old android support lib conflictting with our newer one as
# its on the classpath via loader
# we rename the offending android support package
-repackageclasses 'android.support.v7'
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,EnclosingMethod,RuntimeVisibleAnnotations,AnnotationDefault

-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgent
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.app.Fragment
-keep public class * extends android.app.Fragment

-keepclasseswithmembers class * {
     public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
     public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * {
   @com.google.api.client.util.Key <fields>;
}

# Needed just to be safe in terms of keeping Google API service model classes
-keep class com.google.api.services.*.model.*
-keep class com.google.api.client.**

# See https://groups.google.com/forum/#!topic/guava-discuss/YCZzeCiIVoI
-dontwarn com.google.common.collect.MinMaxPriorityQueue
# Assume dependency libraries Just Work(TM)
-dontwarn com.google.android.youtube.**
-dontwarn com.google.android.analytics.**
-dontwarn com.google.common.**
# Don't discard Guava classes that raise warnings
-keep class com.google.common.collect.MapMakerInternalMap$ReferenceEntry
-keep class com.google.common.cache.LocalCache$ReferenceEntry
# Make sure that Google Analytics doesn't get removed
-keep class com.google.analytics.tracking.android.CampaignTrackingReceiver

-keep class com.google.android.**
-keep class com.google.android.gms.**
-keep class com.google.android.gms.location.**
-keep class com.google.api.client.**
-keep class com.google.maps.android.**
-keep class libcore.**

-dontwarn com.google.common.cache.**
-dontwarn com.google.common.primitives.**
-dontwarn com.google.api.client.googleapis.**

-dontwarn sun.misc.Unsafe
-dontwarn com.google.common.util.concurrent.RateLimiter
-dontwarn javax.annotation.**

-keep class android.support.v8.renderscript.** { *; }
-keep public class * extends android.app,backup.BackupAgent
-keep class android.support.v4.app.** { *; }
-keep interface android.support.v4.app.** { *; }

-keep class !android.support.v7.internal.view.menu.*MenuBuilder*,android.support.v7.** { *; }
-keep interface android.support.v7.app.** { *; }

-keep class android.support.v13.app.** { *; }
-keep interface android.support.v13.app.** { *; }
-keep class android.support.design.widget.** { *; }
-keep interface android.support.design.widget.** { *; }