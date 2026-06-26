.class public Lcom/narvii/tipping/TippingViewerListFragment;
.super Lcom/narvii/tipping/TippingBaseFragment;
.source "TippingViewerListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAuthor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected titleId()I
    .locals 1

    const v0, 0x7f0f10b8

    return v0
.end method
