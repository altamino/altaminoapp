.class public final Lcom/codemonkeylabs/fpslibrary/ui/PermissionCompat;
.super Ljava/lang/Object;
.source "PermissionCompat.java"


# direct methods
.method public static getFlag()I
    .locals 2

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    :goto_0
    return v0
.end method
