.class public Lcom/narvii/nvplayerview/NVVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final CENTER_CROP_SCALE_TYPE:I = 0x1

.field public static final FIT_CENTER_SCALE_TYPE:I = 0x0

.field public static final TYPE_SURFACE_VIEW:I = 0x0

.field public static final TYPE_TEXTURE_VIEW:I = 0x1

.field private static checkVideoDebug:Z

.field public static videoDebugEnable:Z


# instance fields
.field private backgroundColor:I

.field private container:Lcom/narvii/nvplayerview/NVVideoContainer;

.field private context:Landroid/content/Context;

.field private cornerRadius:I

.field private cornerRadiusArray:[F

.field private inited:Z

.field private nvImageView:Lcom/narvii/widget/NVImageView;

.field private nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    sget-object p3, Lcom/narvii/lib/R$styleable;->NVVideoView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->NVVideoView_backgroundColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private checkVideoDebug(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug:Z

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "prefs"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v0, "VideoDebug"

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    sput-boolean p1, Lcom/narvii/nvplayerview/NVVideoView;->videoDebugEnable:Z

    .line 30
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->videoDebugEnable:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method


# virtual methods
.method public addDebugVideoView()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 10
    .line 11
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    const/4 v1, -0x2

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method

.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    .line 35
    .line 36
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 43
    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    goto :goto_2

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    throw v0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :goto_2
    return-void
.end method

.method public getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    return-object v0
.end method

.method public getNvImageView()Lcom/narvii/widget/NVImageView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->getRatio()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    return v0
.end method

.method public getRenderView()Lcom/narvii/nvplayerview/IRenderView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getScaleType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->getScaleType()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v2, v0, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getSurface()Landroid/view/Surface;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public hidePlayButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method public init(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 3
    .param p1    # Lcom/narvii/nvplayerview/ISurfaceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    .line 1
    new-instance v1, Lcom/narvii/nvplayerview/NVVideoContainer;

    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->init(ILcom/narvii/nvplayerview/ISurfaceListener;)V

    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug(Landroid/content/Context;)V

    return-void
.end method

.method public init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V
    .locals 2
    .param p1    # Lcom/narvii/nvplayerview/ISurfaceListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    .line 7
    new-instance v0, Lcom/narvii/nvplayerview/NVVideoContainer;

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 10
    invoke-virtual {v0, p2, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->init(ILcom/narvii/nvplayerview/ISurfaceListener;)V

    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug(Landroid/content/Context;)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public resetDebugVideoView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->reset()V

    .line 8
    :cond_0
    return-void
.end method

.method public setCornerRadiusArray([FI)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    .line 3
    .line 4
    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    .line 5
    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    :cond_0
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setErrorText(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setFromSettingToFirstFrameText(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setFromSettingToFirstFrameText(J)V

    .line 8
    :cond_0
    return-void
.end method

.method public setHitCacheText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setHitCacheText(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setNVImage(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public setPlayerStatus(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPlayerStatus(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setPredictedRatio(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setPredictedRatio(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public setPreloadStrategyInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPreloadText(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setResolutionText(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setResolutionText(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setScaleType(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setVideoSize(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public setVideoSupportLowRes(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setSupportLowResText(Z)V

    .line 8
    :cond_0
    return-void
.end method
