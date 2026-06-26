.class public Lcom/narvii/drawer/DrawerBlurView;
.super Lcom/github/mmin18/widget/RealtimeBlurView;
.source "DrawerBlurView.java"


# instance fields
.field drawer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/DrawerActivity;",
            ">;"
        }
    .end annotation
.end field

.field host:Lcom/narvii/widget/ProxyViewHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getActivityDecorView()Landroid/view/View;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 34
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 36
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getLocationInWindow([I)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x1

    .line 54
    aget v1, p1, v0

    iget-object v2, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v2}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    goto :goto_0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isLeftDrawerVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDrawerHost(Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    return-void
.end method
