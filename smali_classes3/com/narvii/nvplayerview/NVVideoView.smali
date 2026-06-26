.class public Lcom/narvii/nvplayerview/NVVideoView;
.super Landroid/widget/FrameLayout;
.source "NVVideoView.java"


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

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    const/4 p3, 0x0

    .line 57
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 58
    sget-object p3, Lcom/narvii/lib/R$styleable;->NVVideoView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/narvii/lib/R$styleable;->NVVideoView_backgroundColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private checkVideoDebug(Landroid/content/Context;)V
    .locals 2

    .line 283
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 286
    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug:Z

    .line 287
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "prefs"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "VideoDebug"

    .line 288
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/narvii/nvplayerview/NVVideoView;->videoDebugEnable:Z

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 249
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoView;->videoDebugEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addDebugVideoView()V
    .locals 2

    .line 189
    new-instance v0, Lcom/narvii/nvplayerview/NVVideoDebugView;

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 254
    iget v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 258
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 262
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 265
    throw v0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    return-object v0
.end method

.method public getNvImageView()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->getRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getRenderView()Lcom/narvii/nvplayerview/IRenderView;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleType()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->getScaleType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    move-result-object v0

    .line 102
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 103
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoContainer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hidePlayButton(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 176
    iput-boolean p1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 177
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public init(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    const/4 v1, 0x0

    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    new-instance v1, Lcom/narvii/nvplayerview/NVVideoContainer;

    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 73
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 74
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    iget-object v2, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    invoke-virtual {p0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->init(ILcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 77
    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 79
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug(Landroid/content/Context;)V

    return-void
.end method

.method public init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->inited:Z

    .line 87
    new-instance v0, Lcom/narvii/nvplayerview/NVVideoContainer;

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/nvplayerview/NVVideoContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 89
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/nvplayerview/NVVideoContainer;->init(ILcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 92
    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->backgroundColor:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 94
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->checkVideoDebug(Landroid/content/Context;)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public resetDebugVideoView()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->reset()V

    :cond_0
    return-void
.end method

.method public setCornerRadiusArray([FI)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadiusArray:[F

    .line 276
    iget p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    if-eq p2, p1, :cond_0

    .line 277
    iput p2, p0, Lcom/narvii/nvplayerview/NVVideoView;->cornerRadius:I

    .line 278
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setErrorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFromSettingToFirstFrameText(J)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setFromSettingToFirstFrameText(J)V

    :cond_0
    return-void
.end method

.method public setHitCacheText(Ljava/lang/String;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setHitCacheText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNVImage(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public setPlayerStatus(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPlayerStatus(I)V

    :cond_0
    return-void
.end method

.method public setPredictedRatio(F)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setPredictedRatio(F)V

    :cond_0
    return-void
.end method

.method public setPreloadStrategyInfo(Ljava/lang/String;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPreloadText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setResolutionText(II)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setResolutionText(II)V

    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setScaleType(I)V

    :cond_0
    return-void
.end method

.method public setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    :cond_0
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->container:Lcom/narvii/nvplayerview/NVVideoContainer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->setVideoSize(II)V

    :cond_0
    return-void
.end method

.method public setVideoSupportLowRes(Z)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoView;->nvVideoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setSupportLowResText(Z)V

    :cond_0
    return-void
.end method
