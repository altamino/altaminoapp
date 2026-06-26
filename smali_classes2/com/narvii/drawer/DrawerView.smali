.class public Lcom/narvii/drawer/DrawerView;
.super Lcom/narvii/widget/ProxyView;
.source "DrawerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 26
    sget v0, Lcom/narvii/drawer/DrawerRealtimeBlurView;->DRAWER_RENDERING_COUNT:I

    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/DrawerActivity;->onDrawerEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ProxyView;->onEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
