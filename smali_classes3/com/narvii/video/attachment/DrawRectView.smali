.class public Lcom/narvii/video/attachment/DrawRectView;
.super Landroid/view/View;
.source "DrawRectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;,
        Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;,
        Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;,
        Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;
    }
.end annotation


# static fields
.field public static final EDIT_MODE_CAPTION:I = 0x0

.field public static final EDIT_MODE_PIP_VIDEO:I = 0x4

.field public static final EDIT_MODE_STICKER:I = 0x1

.field public static final EDIT_MODE_THEMECAPTION:I = 0x3

.field public static final EDIT_MODE_WATERMARK:I = 0x2

.field public static final HANDCLICK_DURATION:I = 0xc8

.field public static final HANDMOVE_DISTANCE:D = 10.0

.field private static final HINT_LINE_DISAPPEAR_DISTANCE:I = 0x28

.field private static final HINT_LINE_THRESHOLD_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DrawRect"


# instance fields
.field private canDel:Z

.field private canEdit:Z

.field private canHorizFlipClick:Z

.field private canMuteClick:Z

.field private canScalOrRotate:Z

.field private canVolume:Z

.field private deleteImgBtn:Landroid/graphics/Bitmap;

.field private deleteRectF:Landroid/graphics/RectF;

.field private editImgBtn:Landroid/graphics/Bitmap;

.field private editRectF:Landroid/graphics/RectF;

.field private filePath:Ljava/lang/String;

.field private forceAligningHintLine:Z

.field private hintLinePaint:Landroid/graphics/Paint;

.field private hitHintLineBottom:Z

.field private hitHintLineCenterHorizontal:Z

.field private hitHintLineCenterVertical:Z

.field private hitHintLineLeft:Z

.field private hitHintLineRight:Z

.field private hitHintLineTop:Z

.field private horizFlipRectF:Landroid/graphics/RectF;

.field initialMotionX:F

.field initialMotionY:F

.field private isDragging:Z

.field private isInnerDrawRect:Z

.field private lastDragPointF:Landroid/graphics/PointF;

.field private mClickMoveDistance:D

.field private mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

.field private mHasAudio:Z

.field private mListPointF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

.field private mMoveOutScreen:Z

.field private mPipVideoMuteListener:Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;

.field private mPrevMillionSecond:J

.field private mRectPaint:Landroid/graphics/Paint;

.field private mStickerMuteListenser:Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;

.field public final mTouchSlop:I

.field private movementAligningCenterHintLine:Landroid/graphics/PointF;

.field private movementAligningLeftTopHintLine:Landroid/graphics/PointF;

.field private movementAligningRightBottomHintLine:Landroid/graphics/PointF;

.field private muteRectF:Landroid/graphics/RectF;

.field private pipVideoMute:Z

.field private prePointF:Landroid/graphics/PointF;

.field private rectPath:Landroid/graphics/Path;

.field private rotationImgBtn:Landroid/graphics/Bitmap;

.field private rotationRectF:Landroid/graphics/RectF;

.field private safeAreaFocusWidth:F

.field private safeAreaPaint:Landroid/graphics/Paint;

.field private safeAreaRadius:F

.field private showEdit:Z

.field private viewBoundRect:Landroid/graphics/RectF;

.field private viewCenterRect:Landroid/graphics/RectF;

.field private viewMode:I

.field private volumeOffImgBtn:Landroid/graphics/Bitmap;

.field private volumeOnImageBtn:Landroid/graphics/Bitmap;

.field private volumeRectF:Landroid/graphics/RectF;

.field private waterMarkBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 39
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->horizFlipRectF:Landroid/graphics/RectF;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->muteRectF:Landroid/graphics/RectF;

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 51
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canHorizFlipClick:Z

    .line 52
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canMuteClick:Z

    .line 53
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 54
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 55
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 56
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    .line 57
    iput p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 58
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mHasAudio:Z

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_rotate:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_delete:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_edit:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_volume_off:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeOffImgBtn:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_volume_on:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeOnImageBtn:Landroid/graphics/Bitmap;

    .line 64
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 72
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 88
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 89
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    .line 90
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    .line 107
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initRectPaint()V

    .line 108
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initHintLinePaint()V

    .line 109
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initSafeAreaPaint()V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineLeft:Z

    return p1
.end method

.method static synthetic access$302(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineTop:Z

    return p1
.end method

.method static synthetic access$402(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineRight:Z

    return p1
.end method

.method static synthetic access$502(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineBottom:Z

    return p1
.end method

.method static synthetic access$602(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    return p1
.end method

.method private drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 4

    .line 312
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    iget p1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    add-float/2addr p2, p3

    invoke-virtual {p4, p1, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private initHintLinePaint()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    const-string v1, "#04E4B9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initRectPaint()V
    .locals 7

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    aput v4, v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 133
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initSafeAreaPaint()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    const-string v1, "#80D8D8D8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaRadius:F

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    return-void
.end method


# virtual methods
.method public curPointInDrawOrEditRect(Landroid/graphics/PointF;)Z
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 337
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v0

    float-to-int v3, p1

    .line 338
    invoke-virtual {p0, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->curPointIsInnerDrawRect(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 350
    :cond_4
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public curPointIsInnerDrawRect(II)Z
    .locals 7

    .line 318
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 319
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 320
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 321
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 322
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 323
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 324
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 325
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 326
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 327
    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 328
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public getDrawRect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    return-object v0
.end method

.method public isPipVideoMute()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 201
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaRadius:F

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 204
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    add-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x4

    if-ge v1, v8, :cond_0

    goto/16 :goto_3

    .line 213
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-nez v1, :cond_6

    .line 214
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 215
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float v12, v3, v2

    .line 220
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/16 v13, 0xff

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x437f0000    # 255.0f

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 221
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    iput-boolean v10, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    sub-float v3, v2, v16

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 225
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    sub-float/2addr v2, v1

    div-float v2, v2, v16

    sub-float v1, v14, v2

    mul-float v1, v1, v15

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    add-float v3, v2, v16

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    .line 228
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    sub-float/2addr v1, v2

    div-float v1, v1, v16

    sub-float v1, v14, v1

    mul-float v1, v1, v15

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_4

    .line 232
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 233
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    iput-boolean v10, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    goto :goto_1

    .line 235
    :cond_4
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v12, v1

    if-gez v2, :cond_5

    sub-float v2, v1, v16

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_5

    .line 236
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    sub-float/2addr v1, v12

    div-float v1, v1, v16

    sub-float/2addr v14, v1

    mul-float v14, v14, v15

    float-to-int v1, v14

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 237
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 238
    :cond_5
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v12, v1

    if-lez v2, :cond_6

    add-float v2, v1, v16

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_6

    .line 239
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    sub-float/2addr v12, v1

    div-float v12, v12, v16

    sub-float/2addr v14, v12

    mul-float v14, v14, v15

    float-to-int v1, v14

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 240
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 288
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 289
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 293
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-nez v1, :cond_8

    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    if-eqz v1, :cond_7

    if-ne v1, v10, :cond_8

    .line 295
    :cond_7
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 296
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 297
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v1, :cond_a

    .line 298
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_3

    .line 300
    :cond_8
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-nez v1, :cond_a

    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    if-ne v1, v8, :cond_a

    .line 301
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v1, :cond_a

    .line 302
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 303
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 304
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 305
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeOffImgBtn:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeOnImageBtn:Landroid/graphics/Bitmap;

    :goto_2
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    int-to-float p1, p2

    sub-int p2, p4, p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float/2addr v1, p1

    int-to-float v2, p3

    sub-int p3, p5, p3

    int-to-float p3, p3

    div-float v0, p3, v0

    add-float/2addr v0, v2

    .line 151
    iget-object v3, p0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float v5, v1, v4

    sub-float v6, v0, v4

    add-float/2addr v1, v4

    add-float/2addr v0, v4

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const v0, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v0

    mul-float v0, v0, p3

    const v1, 0x3df5c28f    # 0.12f

    mul-float p3, p3, v1

    .line 156
    iget-object v1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    add-float/2addr p1, p2

    add-float/2addr v2, v0

    int-to-float p4, p4

    sub-float/2addr p4, p2

    int-to-float p2, p5

    sub-float/2addr p2, p3

    invoke-virtual {v1, p1, v2, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1b

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v3, v6, :cond_f

    if-eq v3, v11, :cond_1

    if-eq v3, v10, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 400
    :cond_0
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 479
    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 480
    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 481
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 482
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v11

    div-float/2addr v4, v10

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 484
    :cond_2
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineLeft:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineTop:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineRight:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineBottom:Z

    if-eqz v4, :cond_6

    .line 486
    :cond_3
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    if-nez v4, :cond_4

    .line 487
    iput-boolean v6, v0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    .line 488
    new-instance v4, Lcom/narvii/video/attachment/DrawRectView$1;

    invoke-direct {v4, v0}, Lcom/narvii/video/attachment/DrawRectView$1;-><init>(Lcom/narvii/video/attachment/DrawRectView;)V

    const-wide/16 v10, 0xfa

    invoke-static {v4, v10, v11}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 501
    :cond_4
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    if-eqz v4, :cond_5

    .line 502
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->y:F

    .line 503
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 504
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 505
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 506
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 507
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 517
    :cond_5
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    if-eqz v4, :cond_6

    .line 518
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 519
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 520
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 521
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 522
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 523
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 534
    :cond_6
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 535
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v10

    const v10, 0x3f333333    # 0.7f

    mul-float v4, v4, v10

    add-float/2addr v1, v4

    .line 540
    :cond_7
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 541
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    .line 546
    :cond_8
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    float-to-double v4, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v12, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v2, v12

    float-to-double v12, v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-lez v4, :cond_e

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-gez v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-gez v4, :cond_e

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_9

    goto/16 :goto_1

    .line 553
    :cond_9
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    if-eqz v4, :cond_a

    .line 554
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    goto/16 :goto_0

    .line 558
    :cond_a
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-eqz v4, :cond_b

    .line 559
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 561
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v7, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v12

    float-to-double v12, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v4, v12

    .line 562
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 563
    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float v7, v1, v7

    float-to-double v12, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float v7, v2, v7

    float-to-double v14, v7

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    .line 564
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v12, v4

    double-to-float v4, v12

    .line 568
    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    float-to-double v12, v5

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    float-to-double v14, v5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    iget-object v5, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v14

    float-to-double v14, v7

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    float-to-double v6, v5

    .line 569
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v12, v5

    double-to-float v5, v12

    const/high16 v6, 0x43340000    # 180.0f

    mul-float v5, v5, v6

    float-to-double v5, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 571
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v12

    double-to-float v5, v5

    .line 572
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    new-instance v7, Landroid/graphics/PointF;

    iget v12, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v12, v3}, Landroid/graphics/PointF;-><init>(FF)V

    neg-float v3, v5

    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    invoke-interface {v6, v4, v7, v3, v5}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onScaleAndRotate(FLandroid/graphics/PointF;FI)V

    .line 576
    :cond_b
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-nez v3, :cond_c

    .line 577
    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionX:F

    sub-float v3, v1, v3

    float-to-double v3, v3

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionY:F

    sub-float v5, v2, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpl-double v5, v3, v8

    if-ltz v5, :cond_c

    const/4 v3, 0x1

    .line 579
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 583
    :cond_c
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-eqz v3, :cond_d

    .line 584
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v3, :cond_d

    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    if-eqz v4, :cond_d

    .line 585
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    invoke-interface {v3, v4, v5, v6}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 586
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 590
    :cond_d
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_e
    :goto_1
    const/4 v1, 0x1

    .line 550
    iput-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    goto/16 :goto_7

    .line 404
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    sub-long/2addr v1, v5

    .line 405
    iget-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    cmpg-double v3, v5, v8

    if-gez v3, :cond_15

    const-wide/16 v5, 0xc8

    cmp-long v3, v1, v5

    if-gtz v3, :cond_15

    .line 406
    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    if-nez v1, :cond_11

    .line 407
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    if-nez v2, :cond_15

    .line 408
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    if-eqz v2, :cond_10

    .line 409
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    if-eqz v2, :cond_15

    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-nez v3, :cond_15

    .line 410
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;->onDrawRectClick(I)V

    goto :goto_2

    .line 412
    :cond_10
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_15

    .line 413
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    goto :goto_2

    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 417
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    if-nez v2, :cond_15

    .line 418
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    if-eqz v2, :cond_12

    .line 419
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    if-eqz v2, :cond_15

    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    if-nez v3, :cond_15

    .line 420
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;->onDrawRectClick(I)V

    goto :goto_2

    .line 422
    :cond_12
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_15

    .line 423
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    goto :goto_2

    :cond_13
    if-ne v1, v10, :cond_14

    .line 431
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    if-nez v2, :cond_15

    .line 432
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_15

    .line 433
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    goto :goto_2

    :cond_14
    if-ne v1, v11, :cond_15

    .line 436
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    if-nez v2, :cond_15

    .line 437
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_15

    .line 438
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    .line 443
    :cond_15
    :goto_2
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v1, :cond_16

    .line 444
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onDel(I)V

    .line 445
    :cond_16
    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    if-nez v1, :cond_17

    .line 446
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_1a

    .line 447
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 449
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v2, :cond_1a

    .line 450
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    goto :goto_3

    :cond_18
    if-ne v1, v4, :cond_1a

    .line 456
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mPipVideoMuteListener:Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;

    if-eqz v1, :cond_19

    .line 457
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;->onPipVideoMute(Z)V

    .line 459
    :cond_19
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v1, :cond_1a

    .line 460
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    .line 464
    :cond_1a
    :goto_3
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 465
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 466
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 468
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 469
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 470
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canHorizFlipClick:Z

    .line 471
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canMuteClick:Z

    const-wide/16 v1, 0x0

    .line 472
    iput-wide v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 362
    :cond_1b
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 363
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 364
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 365
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 366
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 367
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionX:F

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionY:F

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    .line 373
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 374
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_4

    :cond_1c
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 375
    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    if-nez v3, :cond_1e

    .line 376
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v7, 0x1

    :cond_1d
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    goto :goto_6

    :cond_1e
    const/4 v5, 0x1

    if-ne v3, v5, :cond_20

    .line 378
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v7, 0x1

    :cond_1f
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    goto :goto_6

    :cond_20
    if-ne v3, v4, :cond_23

    .line 382
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_5

    :cond_21
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 383
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v7, 0x1

    :cond_22
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    .line 386
    :cond_23
    :goto_6
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    if-eqz v3, :cond_24

    .line 387
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    invoke-interface {v3, v5, v6}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onTouchDown(Landroid/graphics/PointF;I)V

    .line 390
    :cond_24
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_25

    float-to-int v3, v1

    float-to-int v4, v2

    .line 392
    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/attachment/DrawRectView;->curPointIsInnerDrawRect(II)Z

    move-result v3

    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 394
    :cond_25
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 395
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :goto_7
    return v1
.end method

.method public setDrawRect(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 170
    iput p2, p0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawRectClickListener(Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    return-void
.end method

.method public setMuteVisible(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mHasAudio:Z

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    return-void
.end method

.method public setPipVideoMute(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPipVideoMuteListener(Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mPipVideoMuteListener:Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStickerMuteIndex(I)V
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStickerMuteListenser(Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mStickerMuteListenser:Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;

    return-void
.end method
