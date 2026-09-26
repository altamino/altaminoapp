.class Lcom/mixpanel/android/mpmetrics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LOGTAG:Ljava/lang/String; = "MixpanelAPI.ConfigurationChecker"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v2, "android.permission.INTERNET"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/mixpanel/android/mpmetrics/b;->LOGTAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Package does not have permission android.permission.INTERNET - Mixpanel will not work at all!"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    sget-object p0, Lcom/mixpanel/android/mpmetrics/b;->LOGTAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/mixpanel/android/util/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return v1

    .line 38
    :cond_1
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    .line 41
    :cond_2
    :goto_0
    sget-object p0, Lcom/mixpanel/android/mpmetrics/b;->LOGTAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "Can\'t check configuration when using a Context with null packageManager or packageName"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v1
.end method
