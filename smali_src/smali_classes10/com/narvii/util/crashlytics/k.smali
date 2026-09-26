.class public final synthetic Lcom/narvii/util/crashlytics/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/PackageManager;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result p0

    return p0
.end method
