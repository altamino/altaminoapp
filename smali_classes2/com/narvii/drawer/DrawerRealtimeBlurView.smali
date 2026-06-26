.class public Lcom/narvii/drawer/DrawerRealtimeBlurView;
.super Lcom/narvii/widget/RoundedRealtimeBlurView;
.source "DrawerRealtimeBlurView.java"


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

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RoundedRealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getActivityDecorView()Landroid/view/View;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    return-object v0
.end method

.method protected getLocalLocation([I)V
    .locals 5

    const/4 v0, 0x0

    .line 62
    aput v0, p1, v0

    const/4 v1, 0x1

    .line 63
    aput v0, p1, v1

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    .line 65
    instance-of v3, v2, Lcom/narvii/widget/ProxyViewHost;

    if-nez v3, :cond_0

    .line 66
    aget v3, p1, v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p1, v0

    .line 67
    aget v3, p1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p1, v1

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLocationOnScreen([I)V
    .locals 5

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRealtimeBlurView;->getLocalLocation([I)V

    .line 52
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->proxyView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 54
    aget v4, p1, v3

    .line 55
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 56
    aget v0, p1, v1

    add-int/2addr v0, v2

    aput v0, p1, v1

    .line 57
    aget v0, p1, v3

    add-int/2addr v0, v4

    aput v0, p1, v3

    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 26
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

    .line 90
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onAttachedToWindow()V

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    return-void
.end method

.method protected render(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 41
    sget v0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 43
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->render(Landroid/graphics/Canvas;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget p1, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    return-void

    :catchall_0
    move-exception p1

    sget p2, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    .line 46
    throw p1
.end method

.method public setProxyView(Landroid/view/View;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->proxyView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    if-eqz v0, :cond_2

    .line 79
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onDetachedFromWindow()V

    .line 81
    :cond_2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->decorView:Landroid/view/View;

    .line 82
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->attached:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 83
    invoke-super {p0}, Lcom/github/mmin18/widget/RealtimeBlurView;->onAttachedToWindow()V

    :cond_3
    :goto_1
    return-void
.end method
