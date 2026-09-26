.class public Lcom/narvii/nvplayerview/NVVideoContainer;
.super Lcom/narvii/nvplayerview/AspectRatioFrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/IRenderView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public getRenderView()Lcom/narvii/nvplayerview/IRenderView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayerview/IRenderView;->getSurface()Landroid/view/Surface;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init(ILcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 2
    .param p2    # Lcom/narvii/nvplayerview/ISurfaceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoSurfaceView;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/nvplayerview/NVVideoTextureView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->context:Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lcom/narvii/nvplayerview/NVVideoTextureView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/nvplayerview/IRenderView;->getView()Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    const/4 v1, -0x1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoContainer;->renderView:Lcom/narvii/nvplayerview/IRenderView;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/IRenderView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 47
    :cond_2
    return-void
.end method
