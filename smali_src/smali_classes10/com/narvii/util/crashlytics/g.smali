.class public final synthetic Lcom/narvii/util/crashlytics/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/PackageManager;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getInstantAppCookie()[B

    move-result-object p0

    return-object p0
.end method
