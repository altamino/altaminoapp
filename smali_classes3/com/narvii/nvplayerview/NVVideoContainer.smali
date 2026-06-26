.class public Lcom/narvii/nvplayerview/NVVideoContainer;
.super Lcom/narvii/nvplayerview/AspectRatioFrameLayout;
.source "NVVideoContainer.java"


# static fields
.field private static final CENTER_CROP_SCALE_TYPE:I = 0x1

.field private static final FIT_CENTER_SCALE_TYPE:I = 0x0

.field private static final TYPE_SURFACE_VIEW:I = 0x0

.field private static final TYPE_TEXTURE_VIEW:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private renderView:Lcom/narvii/nvplayerview/IRenderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/IRenderView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    :cond_0
    return-void
.end method

.method public getRenderView()Lcom/narvii/nvplayerview/IRenderView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/IRenderView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public init(ILcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoSurfaceView;

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 39
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoTextureView;

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/IRenderView;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_2

    .line 43
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/IRenderView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    :cond_2
    return-void
.end method
