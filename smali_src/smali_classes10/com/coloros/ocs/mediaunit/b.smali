.class public Lcom/coloros/ocs/mediaunit/b;
.super Lcom/coloros/ocs/base/common/api/b;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/coloros/ocs/base/common/api/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MEDIA_CLIENT"

    return-object v0
.end method
