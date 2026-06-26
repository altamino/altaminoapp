.class public Lcom/narvii/crop/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/OverlayView$OnAdjustListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CROP_GRID_COLUMN_COUNT:I = 0x2

.field public static final DEFAULT_CROP_GRID_ROW_COUNT:I = 0x2

.field public static final DEFAULT_SHOW_CROP_FRAME:Z = false

.field public static final DEFAULT_SHOW_CROP_GRID:Z = true


# instance fields
.field private hAdjust:Z

.field private hMargin:I

.field private hlRect:Landroid/graphics/Rect;

.field private hrRect:Landroid/graphics/Rect;

.field private mCropFramePaint:Landroid/graphics/Paint;

.field private mCropGridColumnCount:I

.field private mCropGridPaint:Landroid/graphics/Paint;

.field private mCropGridRowCount:I

.field private final mCropViewRect:Landroid/graphics/RectF;

.field private mDimmedColor:I

.field private mDimmedStrokePaint:Landroid/graphics/Paint;

.field private mDrawCropLines:Z

.field private mGridPoints:[F

.field private mLBitmap:Landroid/graphics/Bitmap;

.field private mLasthMargin:I

.field private mMaskId:I

.field private mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRBitmap:Landroid/graphics/Bitmap;

.field private mRadius:I

.field private mRoundedDimmedLayer:Z

.field private mRoundedPath:Landroid/graphics/Path;

.field private mShowCropFrame:Z

.field private mShowCropGrid:Z

.field private mTargetAspectRatio:F

.field protected mThisHeight:I

.field protected mThisWidth:I

.field private update:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    .line 48
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 49
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 50
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 51
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    const/16 p2, 0x14

    .line 53
    iput p2, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    .line 59
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    .line 60
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 79
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/crop/OverlayView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/crop/OverlayView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private initCropFrameStyle(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->crop_frame_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 483
    sget v1, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_frame_color:I

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 483
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 485
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 488
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private initCropGridStyle(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->crop_frame_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 498
    sget v1, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_color:I

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->crop_grid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 498
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 500
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 501
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 504
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    return-void
.end method

.method private setUpRoundedPath()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 225
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    int-to-float v3, v1

    int-to-float v1, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private sethMargin(IZ)V
    .locals 4

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ltz p1, :cond_6

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 300
    iget p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    iput p2, p0, Lcom/narvii/crop/OverlayView;->mLasthMargin:I

    .line 302
    :cond_1
    iget-object p2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    if-eqz p2, :cond_6

    .line 303
    div-int/lit8 v1, v0, 0x2

    int-to-float v2, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    sub-float/2addr v2, p2

    float-to-int p2, v2

    if-gt p1, v1, :cond_3

    if-ge p1, p2, :cond_2

    .line 306
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    goto :goto_0

    .line 308
    :cond_2
    iput p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    goto :goto_0

    :cond_3
    sub-int p1, v0, p1

    if-le p1, p2, :cond_4

    .line 312
    iput p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    goto :goto_0

    .line 314
    :cond_4
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 317
    :goto_0
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    int-to-float v1, p2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-int/2addr v0, p2

    int-to-float p2, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 318
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    if-eqz p1, :cond_5

    .line 319
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->changeCropRect(Landroid/graphics/RectF;)V

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected drawCropGrid(Landroid/graphics/Canvas;)V
    .locals 10

    .line 390
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    iget v2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v3

    .line 394
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 404
    :goto_0
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v0, v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    aput v7, v3, v2

    add-int/lit8 v2, v5, 0x1

    .line 406
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, v0

    add-float/2addr v7, v4

    iget v4, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v4, v7, v4

    mul-float v6, v6, v4

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v8

    aput v6, v3, v5

    .line 407
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    add-int/lit8 v5, v2, 0x1

    iget v6, v4, Landroid/graphics/RectF;->right:F

    aput v6, v3, v2

    add-int/lit8 v2, v5, 0x1

    .line 408
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v6, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v7, v6

    mul-float v4, v4, v7

    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 411
    :goto_1
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    if-ge v0, v3, :cond_2

    .line 412
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v0

    add-float/2addr v7, v4

    iget v8, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float v8, v7, v8

    mul-float v6, v6, v8

    iget-object v8, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v9

    aput v6, v3, v2

    .line 413
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v5, 0x1

    iget v6, v8, Landroid/graphics/RectF;->top:F

    aput v6, v2, v5

    add-int/lit8 v5, v3, 0x1

    .line 414
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v8, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v6, v6, v7

    iget-object v7, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v8

    aput v6, v2, v3

    .line 415
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v5, 0x1

    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    aput v6, v2, v5

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    if-eqz v0, :cond_3

    .line 420
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 424
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    if-eqz v0, :cond_7

    .line 426
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$drawable;->h_left_adjuster:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$drawable;->h_right_adjuster:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    .line 433
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v0, v0, v2

    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    .line 434
    iget v2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    if-ge v2, v0, :cond_6

    .line 435
    invoke-direct {p0, v0, v1}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    .line 437
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    sub-int v4, v3, v0

    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 438
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v5, v4

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    float-to-int v4, v4

    add-int/2addr v4, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v2, v5, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    .line 441
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 443
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    .line 446
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    if-eqz v0, :cond_9

    .line 447
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    if-eqz v0, :cond_8

    .line 448
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_2
    return-void
.end method

.method protected drawDimmedLayer(Landroid/graphics/Canvas;)V
    .locals 2

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 280
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->crop_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    .line 286
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected init()V
    .locals 2

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/narvii/crop/OverlayView;->drawCropGrid(Landroid/graphics/Canvas;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/crop/OverlayView;->drawDimmedLayer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 243
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 245
    iget p1, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 246
    iget p2, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/narvii/crop/OverlayView;->mPaddingRight:I

    sub-int/2addr p3, p4

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iget p5, p0, Lcom/narvii/crop/OverlayView;->mPaddingBottom:I

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    .line 249
    iput p3, p0, Lcom/narvii/crop/OverlayView;->mThisWidth:I

    sub-int/2addr p4, p2

    .line 250
    iput p4, p0, Lcom/narvii/crop/OverlayView;->mThisHeight:I

    .line 251
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 352
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    if-eqz v0, :cond_5

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->update:Z

    if-eqz v0, :cond_4

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0, v2}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 370
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 371
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    if-eqz v0, :cond_4

    .line 372
    invoke-interface {v0}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->onEventUp()V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 376
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->update:Z

    if-eqz v0, :cond_5

    return v1

    .line 380
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 467
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    invoke-direct {p0, p1}, Lcom/narvii/crop/OverlayView;->initCropFrameStyle(Landroid/content/res/TypedArray;)V

    .line 470
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_show_frame:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    .line 472
    invoke-direct {p0, p1}, Lcom/narvii/crop/OverlayView;->initCropGridStyle(Landroid/content/res/TypedArray;)V

    .line 473
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_show_grid:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropFramePathEffect(Landroid/graphics/PathEffect;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropRectWidth(I)V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v1, p1

    .line 329
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 330
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    if-eqz p1, :cond_1

    .line 331
    invoke-interface {p1}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->onEventUp()V

    :cond_1
    return-void

    .line 335
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int p1, v0, p1

    const/4 v1, 0x2

    .line 336
    div-int/2addr p1, v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    new-array p1, v1, [I

    const/4 v1, 0x0

    .line 337
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mLasthMargin:I

    aput v3, p1, v1

    iget v1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    aput v1, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    .line 338
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 339
    new-instance v1, Lcom/narvii/crop/OverlayView$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/crop/OverlayView$1;-><init>(Lcom/narvii/crop/OverlayView;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setCustomPadding(IIII)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 257
    iput p2, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 258
    iput p3, p0, Lcom/narvii/crop/OverlayView;->mPaddingRight:I

    .line 259
    iput p4, p0, Lcom/narvii/crop/OverlayView;->mPaddingBottom:I

    .line 260
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    return-void
.end method

.method public setDrawCropLines(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    return-void
.end method

.method public setHorizontalAdjust(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    return-void
.end method

.method public setMaskId(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    return-void
.end method

.method public setOnAdjustListener(Lcom/narvii/crop/OverlayView$OnAdjustListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    .line 84
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    return-void
.end method

.method public setRoundedDimmedLayer(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mTargetAspectRatio:F

    .line 192
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    return-void
.end method

.method public setupCropBounds()V
    .locals 8

    .line 200
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mThisWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/narvii/crop/OverlayView;->mTargetAspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 201
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mThisHeight:I

    if-le v1, v3, :cond_0

    int-to-float v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 203
    div-int/lit8 v0, v0, 0x2

    .line 204
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    add-int v5, v4, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    int-to-float v7, v6

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    int-to-float v0, v4

    add-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v1

    .line 207
    div-int/lit8 v3, v3, 0x2

    .line 208
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    int-to-float v5, v4

    iget v6, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    add-int v7, v6, v3

    int-to-float v7, v7

    add-int/2addr v4, v0

    int-to-float v0, v4

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 213
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    return-void
.end method
