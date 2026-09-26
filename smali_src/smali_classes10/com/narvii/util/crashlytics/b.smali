.class public final synthetic Lcom/narvii/util/crashlytics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
