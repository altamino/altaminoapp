.class public Lcom/narvii/crop/OverlayView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    const/16 p2, 0x14

    iput p2, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/crop/OverlayView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/crop/OverlayView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/crop/OverlayView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    return-void
.end method

.method private initCropFrameStyle(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$dimen;->crop_frame_size:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_frame_color:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    const v3, 0x106000b

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 30
    int-to-float v0, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 52
    return-void
.end method

.method private initCropGridStyle(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$dimen;->crop_frame_size:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_color:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    sget v3, Lcom/narvii/lib/R$color;->crop_grid:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 26
    move-result v1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 29
    int-to-float v0, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I

    .line 40
    const/4 v1, 0x2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 47
    .line 48
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 52
    move-result p1

    .line 53
    .line 54
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    .line 55
    return-void
.end method

.method private setUpRoundedPath()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 16
    float-to-int v1, v1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 26
    .line 27
    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 28
    float-to-int v3, v3

    .line 29
    .line 30
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 31
    float-to-int v2, v2

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 37
    move-result v4

    .line 38
    add-int/2addr v2, v4

    .line 39
    .line 40
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 41
    .line 42
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 43
    float-to-int v4, v4

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 54
    float-to-int v2, v2

    .line 55
    .line 56
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 57
    float-to-int v3, v3

    .line 58
    .line 59
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 60
    float-to-int v4, v4

    .line 61
    .line 62
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 63
    float-to-int v1, v1

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 69
    .line 70
    new-instance v2, Landroid/graphics/RectF;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    .line 76
    int-to-float v3, v0

    .line 77
    int-to-float v0, v0

    .line 78
    .line 79
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 83
    return-void
.end method

.method private sethMargin(IZ)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    .line 12
    if-ltz p1, :cond_6

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 20
    .line 21
    iput p2, p0, Lcom/narvii/crop/OverlayView;->mLasthMargin:I

    .line 22
    .line 23
    :cond_1
    iget-object p2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 24
    .line 25
    if-eqz p2, :cond_6

    .line 26
    .line 27
    div-int/lit8 v1, v0, 0x2

    .line 28
    int-to-float v2, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 32
    move-result p2

    .line 33
    .line 34
    const/high16 v3, 0x40000000    # 2.0f

    .line 35
    div-float/2addr p2, v3

    .line 36
    sub-float/2addr v2, p2

    .line 37
    float-to-int p2, v2

    .line 38
    .line 39
    if-gt p1, v1, :cond_3

    .line 40
    .line 41
    if-ge p1, p2, :cond_2

    .line 42
    .line 43
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iput p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_3
    sub-int p1, v0, p1

    .line 50
    .line 51
    if-le p1, p2, :cond_4

    .line 52
    .line 53
    iput p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_4
    iput p1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 59
    .line 60
    iget p2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 61
    int-to-float v1, p2

    .line 62
    .line 63
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 64
    sub-int/2addr v0, p2

    .line 65
    int-to-float p2, v0

    .line 66
    .line 67
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    new-instance p2, Landroid/graphics/RectF;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 79
    .line 80
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 81
    .line 82
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 83
    .line 84
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 85
    .line 86
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 87
    .line 88
    .line 89
    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, p2}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->changeCropRect(Landroid/graphics/RectF;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    .line 96
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected drawCropGrid(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget v2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    move-result v3

    .line 30
    mul-int/2addr v2, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    div-int/2addr v2, v3

    .line 42
    .line 43
    new-instance v3, Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 47
    move-result v4

    .line 48
    sub-int/2addr v4, v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v5

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 63
    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 81
    .line 82
    mul-int/lit8 v0, v0, 0x4

    .line 83
    .line 84
    iget v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    .line 85
    .line 86
    mul-int/lit8 v2, v2, 0x4

    .line 87
    add-int/2addr v0, v2

    .line 88
    .line 89
    new-array v0, v0, [F

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 92
    move v0, v1

    .line 93
    move v2, v0

    .line 94
    .line 95
    :goto_0
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 96
    .line 97
    const/high16 v4, 0x3f800000    # 1.0f

    .line 98
    .line 99
    if-ge v0, v3, :cond_1

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 102
    .line 103
    add-int/lit8 v5, v2, 0x1

    .line 104
    .line 105
    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 106
    .line 107
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .line 108
    .line 109
    aput v7, v3, v2

    .line 110
    .line 111
    add-int/lit8 v7, v2, 0x2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 115
    move-result v6

    .line 116
    int-to-float v8, v0

    .line 117
    add-float/2addr v8, v4

    .line 118
    .line 119
    iget v4, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 120
    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    int-to-float v4, v4

    .line 123
    .line 124
    div-float v4, v8, v4

    .line 125
    mul-float/2addr v6, v4

    .line 126
    .line 127
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 128
    .line 129
    iget v9, v4, Landroid/graphics/RectF;->top:F

    .line 130
    add-float/2addr v6, v9

    .line 131
    .line 132
    aput v6, v3, v5

    .line 133
    .line 134
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 135
    .line 136
    add-int/lit8 v5, v2, 0x3

    .line 137
    .line 138
    iget v6, v4, Landroid/graphics/RectF;->right:F

    .line 139
    .line 140
    aput v6, v3, v7

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x4

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 146
    move-result v4

    .line 147
    .line 148
    iget v6, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    .line 149
    .line 150
    add-int/lit8 v6, v6, 0x1

    .line 151
    int-to-float v6, v6

    .line 152
    div-float/2addr v8, v6

    .line 153
    mul-float/2addr v4, v8

    .line 154
    .line 155
    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 156
    .line 157
    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 158
    add-float/2addr v4, v6

    .line 159
    .line 160
    aput v4, v3, v5

    .line 161
    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    goto :goto_0

    .line 164
    :cond_1
    move v0, v1

    .line 165
    .line 166
    :goto_1
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    .line 167
    .line 168
    if-ge v0, v3, :cond_2

    .line 169
    .line 170
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 171
    .line 172
    add-int/lit8 v5, v2, 0x1

    .line 173
    .line 174
    iget-object v6, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 178
    move-result v6

    .line 179
    int-to-float v7, v0

    .line 180
    add-float/2addr v7, v4

    .line 181
    .line 182
    iget v8, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    .line 183
    .line 184
    add-int/lit8 v8, v8, 0x1

    .line 185
    int-to-float v8, v8

    .line 186
    .line 187
    div-float v8, v7, v8

    .line 188
    mul-float/2addr v6, v8

    .line 189
    .line 190
    iget-object v8, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 191
    .line 192
    iget v9, v8, Landroid/graphics/RectF;->left:F

    .line 193
    add-float/2addr v6, v9

    .line 194
    .line 195
    aput v6, v3, v2

    .line 196
    .line 197
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 198
    .line 199
    add-int/lit8 v6, v2, 0x2

    .line 200
    .line 201
    iget v9, v8, Landroid/graphics/RectF;->top:F

    .line 202
    .line 203
    aput v9, v3, v5

    .line 204
    .line 205
    add-int/lit8 v5, v2, 0x3

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 209
    move-result v8

    .line 210
    .line 211
    iget v9, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    .line 212
    .line 213
    add-int/lit8 v9, v9, 0x1

    .line 214
    int-to-float v9, v9

    .line 215
    div-float/2addr v7, v9

    .line 216
    mul-float/2addr v8, v7

    .line 217
    .line 218
    iget-object v7, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 219
    .line 220
    iget v9, v7, Landroid/graphics/RectF;->left:F

    .line 221
    add-float/2addr v8, v9

    .line 222
    .line 223
    aput v8, v3, v6

    .line 224
    .line 225
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 226
    .line 227
    add-int/lit8 v2, v2, 0x4

    .line 228
    .line 229
    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    .line 230
    .line 231
    aput v6, v3, v5

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    goto :goto_1

    .line 235
    .line 236
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 237
    .line 238
    if-eqz v0, :cond_3

    .line 239
    .line 240
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 244
    .line 245
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    .line 246
    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 250
    .line 251
    if-nez v0, :cond_4

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    sget v2, Lcom/narvii/lib/R$drawable;->h_left_adjuster:I

    .line 262
    .line 263
    .line 264
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 268
    .line 269
    :cond_4
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 270
    .line 271
    if-nez v0, :cond_5

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    sget v2, Lcom/narvii/lib/R$drawable;->h_right_adjuster:I

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 285
    move-result-object v0

    .line 286
    .line 287
    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 288
    .line 289
    :cond_5
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 293
    move-result v0

    .line 294
    float-to-int v0, v0

    .line 295
    .line 296
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 300
    move-result v2

    .line 301
    mul-int/2addr v0, v2

    .line 302
    .line 303
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 307
    move-result v2

    .line 308
    div-int/2addr v0, v2

    .line 309
    .line 310
    iget v2, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 311
    .line 312
    if-ge v2, v0, :cond_6

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, v0, v1}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    .line 316
    .line 317
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    .line 318
    .line 319
    iget v3, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 320
    .line 321
    sub-int v4, v3, v0

    .line 322
    .line 323
    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 324
    .line 325
    iget v6, v5, Landroid/graphics/RectF;->top:F

    .line 326
    float-to-int v6, v6

    .line 327
    .line 328
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 329
    float-to-int v5, v5

    .line 330
    .line 331
    .line 332
    invoke-direct {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    .line 334
    iput-object v2, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 335
    .line 336
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 337
    .line 338
    new-instance v3, Landroid/graphics/Rect;

    .line 339
    .line 340
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 344
    move-result v4

    .line 345
    .line 346
    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mLBitmap:Landroid/graphics/Bitmap;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 350
    move-result v5

    .line 351
    .line 352
    .line 353
    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    .line 355
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 356
    .line 357
    iget-object v5, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    .line 362
    new-instance v2, Landroid/graphics/Rect;

    .line 363
    .line 364
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 365
    .line 366
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 367
    float-to-int v5, v4

    .line 368
    .line 369
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 370
    float-to-int v6, v6

    .line 371
    float-to-int v4, v4

    .line 372
    add-int/2addr v4, v0

    .line 373
    .line 374
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 375
    float-to-int v0, v0

    .line 376
    .line 377
    .line 378
    invoke-direct {v2, v5, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    .line 380
    iput-object v2, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    .line 381
    .line 382
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 383
    .line 384
    new-instance v2, Landroid/graphics/Rect;

    .line 385
    .line 386
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 390
    move-result v3

    .line 391
    .line 392
    iget-object v4, p0, Lcom/narvii/crop/OverlayView;->mRBitmap:Landroid/graphics/Bitmap;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 396
    move-result v4

    .line 397
    .line 398
    .line 399
    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    .line 401
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    .line 402
    .line 403
    iget-object v3, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 407
    .line 408
    .line 409
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    .line 410
    .line 411
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    .line 412
    .line 413
    if-eqz v0, :cond_9

    .line 414
    .line 415
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    .line 416
    .line 417
    if-eqz v0, :cond_8

    .line 418
    .line 419
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 420
    .line 421
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 425
    goto :goto_2

    .line 426
    .line 427
    :cond_8
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 433
    :cond_9
    :goto_2
    return-void
.end method

.method protected drawDimmedLayer(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sget v1, Lcom/narvii/lib/R$color;->crop_dimmed:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    move-result v0

    .line 33
    .line 34
    iput v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mRoundedPath:Landroid/graphics/Path;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/crop/OverlayView;->drawCropGrid(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/crop/OverlayView;->drawDimmedLayer(Landroid/graphics/Canvas;)V

    .line 10
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p3

    .line 14
    .line 15
    iget p4, p0, Lcom/narvii/crop/OverlayView;->mPaddingRight:I

    .line 16
    sub-int/2addr p3, p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p4

    .line 21
    .line 22
    iget p5, p0, Lcom/narvii/crop/OverlayView;->mPaddingBottom:I

    .line 23
    sub-int/2addr p4, p5

    .line 24
    sub-int/2addr p3, p1

    .line 25
    .line 26
    iput p3, p0, Lcom/narvii/crop/OverlayView;->mThisWidth:I

    .line 27
    sub-int/2addr p4, p2

    .line 28
    .line 29
    iput p4, p0, Lcom/narvii/crop/OverlayView;->mThisHeight:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    .line 33
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v3, 0x2

    .line 16
    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    move-result v0

    .line 27
    float-to-int v0, v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v2}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->onEventUp()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hlRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    move-result v2

    .line 57
    float-to-int v2, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    move-result v3

    .line 62
    float-to-int v3, v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->hrRect:Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 74
    move-result v2

    .line 75
    float-to-int v2, v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 79
    move-result v3

    .line 80
    float-to-int v3, v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 89
    .line 90
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/crop/OverlayView;->update:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    return v1

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    move-result p1

    .line 98
    return p1
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/crop/OverlayView;->initCropFrameStyle(Landroid/content/res/TypedArray;)V

    .line 25
    .line 26
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_show_frame:I

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/crop/OverlayView;->initCropGridStyle(Landroid/content/res/TypedArray;)V

    .line 37
    .line 38
    sget v0, Lcom/narvii/lib/R$styleable;->ucrop_UCropView_ucrop_show_grid:I

    .line 39
    const/4 v1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    .line 46
    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method

.method public setCropFramePathEffect(Landroid/graphics/PathEffect;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6
    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 3
    int-to-float p1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridColumnCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/crop/OverlayView;->mCropGridRowCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 3
    int-to-float p1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    return-void
.end method

.method public setCropRectWidth(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    int-to-float v1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 10
    move-result v0

    .line 11
    .line 12
    cmpl-float v0, v1, v0

    .line 13
    .line 14
    if-ltz v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/crop/OverlayView$OnAdjustListener;->onEventUp()V

    .line 22
    :cond_1
    return-void

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 33
    .line 34
    sub-int p1, v0, p1

    .line 35
    .line 36
    div-int/lit8 p1, p1, 0x2

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, v1}, Lcom/narvii/crop/OverlayView;->sethMargin(IZ)V

    .line 41
    .line 42
    iget p1, p0, Lcom/narvii/crop/OverlayView;->mLasthMargin:I

    .line 43
    .line 44
    iget v1, p0, Lcom/narvii/crop/OverlayView;->hMargin:I

    .line 45
    .line 46
    .line 47
    filled-new-array {p1, v1}, [I

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-wide/16 v1, 0x1f4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    new-instance v1, Lcom/narvii/crop/OverlayView$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0, v0}, Lcom/narvii/crop/OverlayView$1;-><init>(Lcom/narvii/crop/OverlayView;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    return-void
.end method

.method public setCustomPadding(IIII)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/crop/OverlayView;->mPaddingRight:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/crop/OverlayView;->mPaddingBottom:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    .line 12
    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/crop/OverlayView;->mDimmedColor:I

    return-void
.end method

.method public setDrawCropLines(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mDrawCropLines:Z

    return-void
.end method

.method public setHorizontalAdjust(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->hAdjust:Z

    return-void
.end method

.method public setMaskId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/OverlayView;->mMaskId:I

    return-void
.end method

.method public setOnAdjustListener(Lcom/narvii/crop/OverlayView$OnAdjustListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/OverlayView;->mOnAdjustListener:Lcom/narvii/crop/OverlayView$OnAdjustListener;

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mRadius:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    .line 6
    return-void
.end method

.method public setRoundedDimmedLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mRoundedDimmedLayer:Z

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropFrame:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/OverlayView;->mShowCropGrid:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/crop/OverlayView;->mTargetAspectRatio:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/crop/OverlayView;->setupCropBounds()V

    .line 6
    return-void
.end method

.method public setupCropBounds()V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/crop/OverlayView;->mThisWidth:I

    .line 3
    int-to-float v1, v0

    .line 4
    .line 5
    iget v2, p0, Lcom/narvii/crop/OverlayView;->mTargetAspectRatio:F

    .line 6
    div-float/2addr v1, v2

    .line 7
    float-to-int v1, v1

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/crop/OverlayView;->mThisHeight:I

    .line 10
    .line 11
    if-le v1, v3, :cond_0

    .line 12
    int-to-float v1, v3

    .line 13
    mul-float/2addr v1, v2

    .line 14
    float-to-int v1, v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    iget v4, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 22
    .line 23
    add-int v5, v4, v0

    .line 24
    int-to-float v5, v5

    .line 25
    .line 26
    iget v6, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 27
    int-to-float v7, v6

    .line 28
    add-int/2addr v4, v1

    .line 29
    add-int/2addr v4, v0

    .line 30
    int-to-float v0, v4

    .line 31
    add-int/2addr v6, v3

    .line 32
    int-to-float v1, v6

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sub-int/2addr v3, v1

    .line 38
    .line 39
    div-int/lit8 v3, v3, 0x2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/crop/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v4, p0, Lcom/narvii/crop/OverlayView;->mPaddingLeft:I

    .line 44
    int-to-float v5, v4

    .line 45
    .line 46
    iget v6, p0, Lcom/narvii/crop/OverlayView;->mPaddingTop:I

    .line 47
    .line 48
    add-int v7, v6, v3

    .line 49
    int-to-float v7, v7

    .line 50
    add-int/2addr v4, v0

    .line 51
    int-to-float v0, v4

    .line 52
    add-int/2addr v6, v1

    .line 53
    add-int/2addr v6, v3

    .line 54
    int-to-float v1, v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    :goto_0
    const/4 v0, 0x0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/crop/OverlayView;->mGridPoints:[F

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/crop/OverlayView;->setUpRoundedPath()V

    .line 64
    return-void
.end method
