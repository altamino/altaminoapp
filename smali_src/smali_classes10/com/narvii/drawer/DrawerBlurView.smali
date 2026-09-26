.class public Lcom/narvii/drawer/DrawerBlurView;
.super Lcom/github/mmin18/widget/RealtimeBlurView;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getActivityDecorView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    .line 54
    return-object v0
.end method

.method public getLocationInWindow([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    aget v1, p1, v0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v3

    .line 35
    sub-int/2addr v2, v3

    .line 36
    add-int/2addr v1, v2

    .line 37
    .line 38
    aput v1, p1, v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isLeftDrawerVisible()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/drawer/DrawerBlurView;->drawer:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
.end method

.method public setDrawerHost(Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/drawer/DrawerBlurView;->host:Lcom/narvii/widget/ProxyViewHost;

    return-void
.end method
