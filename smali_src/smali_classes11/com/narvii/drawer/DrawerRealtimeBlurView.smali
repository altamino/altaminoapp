.class public Lcom/narvii/drawer/DrawerRealtimeBlurView;
.super Lcom/narvii/widget/RoundedRealtimeBlurView;
.source "SourceFile"


# static fields
.field public static DRAWER_RENDERING_COUNT:I


# instance fields
.field private attached:Z

.field private decorView:Landroid/view/View;

.field private proxyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RoundedRealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getActivityDecorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    return-object v0
.end method

.method protected getLocalLocation([I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aput v0, p1, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    aput v0, p1, v1

    .line 7
    move-object v2, p0

    .line 8
    .line 9
    :goto_0
    if-eqz v2, :cond_0

    .line 10
    .line 11
    instance-of v3, v2, Lcom/narvii/widget/ProxyViewHost;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    aget v3, p1, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 19
    move-result v4

    .line 20
    add-int/2addr v3, v4

    .line 21
    .line 22
    aput v3, p1, v0

    .line 23
    .line 24
    aget v3, p1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 28
    move-result v4

    .line 29
    add-int/2addr v3, v4

    .line 30
    .line 31
    aput v3, p1, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Landroid/view/View;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public getLocationOnScreen([I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->getLocalLocation([I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->proxyView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    aget v4, p1, v3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 17
    .line 18
    aget v0, p1, v1

    .line 19
    add-int/2addr v0, v2

    .line 20
    .line 21
    aput v0, p1, v1

    .line 22
    .line 23
    aget v0, p1, v3

    .line 24
    add-int/2addr v0, v4

    .line 25
    .line 26
    aput v0, p1, v3

    .line 27
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onAttachedToWindow()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    .line 11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    .line 11
    return-void
.end method

.method protected render(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    sput v0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->render(Landroid/graphics/Canvas;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    sget p1, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    sput p1, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    .line 19
    sget p2, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    sput p2, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 24
    throw p1
.end method

.method public setProxyView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->proxyView:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    .line 28
    .line 29
    :cond_2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onAttachedToWindow()V

    .line 39
    :cond_3
    :goto_1
    return-void
.end method
