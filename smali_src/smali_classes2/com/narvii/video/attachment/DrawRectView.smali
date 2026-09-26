.class public Lcom/narvii/video/attachment/DrawRectView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;,
        Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;,
        Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;,
        Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->horizFlipRectF:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->muteRectF:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canHorizFlipClick:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canMuteClick:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    iput p1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mHasAudio:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_rotate:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_delete:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_edit:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_volume_off:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeOffImgBtn:Landroid/graphics/Bitmap;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_draw_rect_volume_on:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeOnImageBtn:Landroid/graphics/Bitmap;

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 22
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 23
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    .line 25
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initRectPaint()V

    .line 26
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initHintLinePaint()V

    .line 27
    invoke-direct {p0}, Lcom/narvii/video/attachment/DrawRectView;->initSafeAreaPaint()V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineLeft:Z

    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineTop:Z

    .line 3
    return p1
.end method

.method static synthetic access$402(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineRight:Z

    .line 3
    return p1
.end method

.method static synthetic access$502(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineBottom:Z

    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/narvii/video/attachment/DrawRectView;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    .line 3
    return p1
.end method

.method private drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    div-float/2addr v1, v2

    .line 11
    sub-float/2addr v0, v1

    .line 12
    .line 13
    iget v1, p2, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    div-float/2addr v3, v2

    .line 20
    sub-float/2addr v1, v3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 26
    .line 27
    iget p1, p2, Landroid/graphics/PointF;->x:F

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr v0, v2

    .line 34
    sub-float/2addr p1, v0

    .line 35
    .line 36
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    div-float/2addr v1, v2

    .line 43
    sub-float/2addr v0, v1

    .line 44
    .line 45
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v3, v2

    .line 52
    add-float/2addr v1, v3

    .line 53
    .line 54
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    move-result p3

    .line 59
    int-to-float p3, p3

    .line 60
    div-float/2addr p3, v2

    .line 61
    add-float/2addr p2, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p1, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    return-void
.end method

.method private initHintLinePaint()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    const-string v1, "#04E4B9"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    return-void
.end method

.method private initRectPaint()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    new-instance v2, Landroid/graphics/DashPathEffect;

    .line 37
    const/4 v3, 0x2

    .line 38
    .line 39
    new-array v3, v3, [F

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    const/high16 v5, 0x40400000    # 3.0f

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 49
    move-result v4

    .line 50
    int-to-float v4, v4

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    aput v4, v3, v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 61
    move-result v4

    .line 62
    int-to-float v4, v4

    .line 63
    .line 64
    aput v4, v3, v1

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    return-void
.end method

.method private initSafeAreaPaint()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const-string v1, "#80D8D8D8"

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const/high16 v1, 0x40800000    # 4.0f

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaRadius:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const/high16 v1, 0x41100000    # 9.0f

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 68
    move-result v0

    .line 69
    .line 70
    iput v0, p0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    .line 71
    return-void
.end method


# virtual methods
.method public curPointInDrawOrEditRect(Landroid/graphics/PointF;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 11
    float-to-int v2, v0

    .line 12
    float-to-int v3, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->curPointIsInnerDrawRect(II)Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    return v3

    .line 21
    .line 22
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    return v3

    .line 30
    .line 31
    :cond_2
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    return v3

    .line 39
    .line 40
    :cond_3
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    return v3

    .line 48
    .line 49
    :cond_4
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    return v3

    .line 57
    :cond_5
    return v1
.end method

.method public curPointIsInnerDrawRect(II)Z
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroid/graphics/PointF;

    .line 20
    .line 21
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    iget-object v4, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Landroid/graphics/PointF;

    .line 30
    .line 31
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 37
    const/4 v3, 0x1

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Landroid/graphics/PointF;

    .line 44
    .line 45
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    iget-object v4, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    check-cast v4, Landroid/graphics/PointF;

    .line 54
    .line 55
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 61
    const/4 v4, 0x2

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Landroid/graphics/PointF;

    .line 68
    .line 69
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 70
    .line 71
    iget-object v5, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    check-cast v4, Landroid/graphics/PointF;

    .line 78
    .line 79
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 85
    const/4 v4, 0x3

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    check-cast v2, Landroid/graphics/PointF;

    .line 92
    .line 93
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 94
    .line 95
    iget-object v5, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    check-cast v4, Landroid/graphics/PointF;

    .line 102
    .line 103
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 113
    .line 114
    new-instance v2, Landroid/graphics/Region;

    .line 115
    .line 116
    .line 117
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 118
    .line 119
    new-instance v3, Landroid/graphics/Region;

    .line 120
    .line 121
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 122
    float-to-int v4, v4

    .line 123
    .line 124
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 125
    float-to-int v5, v5

    .line 126
    .line 127
    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 128
    float-to-int v6, v6

    .line 129
    .line 130
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 131
    float-to-int v0, v0

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 141
    move-result p1

    .line 142
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

    iget-object v0, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    return-object v0
.end method

.method public isPipVideoMute()Z
    .locals 1

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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 10
    .line 11
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaRadius:F

    .line 12
    .line 13
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 22
    move-result v2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 27
    .line 28
    iget v4, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    .line 29
    sub-float/2addr v3, v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 33
    move-result v4

    .line 34
    .line 35
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 36
    .line 37
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 50
    move-result v2

    .line 51
    .line 52
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 53
    .line 54
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 58
    move-result v4

    .line 59
    .line 60
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 63
    .line 64
    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    .line 65
    add-float/2addr v5, v1

    .line 66
    .line 67
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 75
    .line 76
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 77
    .line 78
    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    .line 79
    sub-float/2addr v2, v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 83
    move-result v3

    .line 84
    .line 85
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 86
    .line 87
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 91
    move-result v5

    .line 92
    .line 93
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 101
    .line 102
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 106
    move-result v3

    .line 107
    .line 108
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 109
    .line 110
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 111
    .line 112
    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaFocusWidth:F

    .line 113
    add-float/2addr v4, v5

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 117
    move-result v5

    .line 118
    .line 119
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->safeAreaPaint:Landroid/graphics/Paint;

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 127
    .line 128
    if-eqz v1, :cond_a

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 132
    move-result v1

    .line 133
    const/4 v8, 0x4

    .line 134
    .line 135
    if-ge v1, v8, :cond_0

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 140
    const/4 v9, 0x1

    .line 141
    const/4 v10, 0x2

    .line 142
    const/4 v11, 0x0

    .line 143
    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 147
    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    check-cast v1, Landroid/graphics/PointF;

    .line 157
    .line 158
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 159
    .line 160
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 161
    .line 162
    .line 163
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    check-cast v2, Landroid/graphics/PointF;

    .line 167
    .line 168
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 169
    add-float/2addr v1, v2

    .line 170
    .line 171
    const/high16 v2, 0x40000000    # 2.0f

    .line 172
    div-float/2addr v1, v2

    .line 173
    .line 174
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 175
    .line 176
    .line 177
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    check-cast v3, Landroid/graphics/PointF;

    .line 181
    .line 182
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 183
    .line 184
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 185
    .line 186
    .line 187
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    check-cast v4, Landroid/graphics/PointF;

    .line 191
    .line 192
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 193
    add-float/2addr v3, v4

    .line 194
    .line 195
    div-float v12, v3, v2

    .line 196
    .line 197
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 198
    .line 199
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 200
    .line 201
    cmpl-float v4, v1, v3

    .line 202
    .line 203
    const/16 v13, 0xff

    .line 204
    .line 205
    const/high16 v14, 0x3f800000    # 1.0f

    .line 206
    .line 207
    const/high16 v15, 0x437f0000    # 255.0f

    .line 208
    .line 209
    const/high16 v16, 0x42200000    # 40.0f

    .line 210
    .line 211
    if-ltz v4, :cond_1

    .line 212
    .line 213
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 214
    .line 215
    cmpg-float v4, v1, v4

    .line 216
    .line 217
    if-gtz v4, :cond_1

    .line 218
    .line 219
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    .line 224
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 228
    move-result v2

    .line 229
    const/4 v3, 0x0

    .line 230
    .line 231
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 235
    move-result v4

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 239
    move-result v1

    .line 240
    int-to-float v5, v1

    .line 241
    .line 242
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 243
    .line 244
    move-object/from16 v1, p1

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 248
    .line 249
    iput-boolean v9, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    .line 250
    goto :goto_0

    .line 251
    .line 252
    :cond_1
    cmpg-float v4, v1, v3

    .line 253
    .line 254
    if-gez v4, :cond_2

    .line 255
    .line 256
    sub-float v4, v3, v16

    .line 257
    .line 258
    cmpl-float v4, v1, v4

    .line 259
    .line 260
    if-ltz v4, :cond_2

    .line 261
    .line 262
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 263
    sub-float/2addr v3, v1

    .line 264
    .line 265
    div-float v3, v3, v16

    .line 266
    .line 267
    sub-float v1, v14, v3

    .line 268
    mul-float/2addr v1, v15

    .line 269
    float-to-int v1, v1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    .line 274
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 278
    move-result v2

    .line 279
    const/4 v3, 0x0

    .line 280
    .line 281
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 285
    move-result v4

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 289
    move-result v1

    .line 290
    int-to-float v5, v1

    .line 291
    .line 292
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 293
    .line 294
    move-object/from16 v1, p1

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    goto :goto_0

    .line 299
    .line 300
    :cond_2
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 301
    .line 302
    cmpl-float v3, v1, v2

    .line 303
    .line 304
    if-lez v3, :cond_3

    .line 305
    .line 306
    add-float v3, v2, v16

    .line 307
    .line 308
    cmpg-float v3, v1, v3

    .line 309
    .line 310
    if-gtz v3, :cond_3

    .line 311
    .line 312
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 313
    sub-float/2addr v1, v2

    .line 314
    .line 315
    div-float v1, v1, v16

    .line 316
    .line 317
    sub-float v1, v14, v1

    .line 318
    mul-float/2addr v1, v15

    .line 319
    float-to-int v1, v1

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    .line 324
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 328
    move-result v2

    .line 329
    const/4 v3, 0x0

    .line 330
    .line 331
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 335
    move-result v4

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 339
    move-result v1

    .line 340
    int-to-float v5, v1

    .line 341
    .line 342
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 343
    .line 344
    move-object/from16 v1, p1

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    .line 349
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 350
    .line 351
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 352
    .line 353
    cmpl-float v3, v12, v2

    .line 354
    .line 355
    if-ltz v3, :cond_4

    .line 356
    .line 357
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 358
    .line 359
    cmpg-float v3, v12, v3

    .line 360
    .line 361
    if-gtz v3, :cond_4

    .line 362
    .line 363
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    const/4 v2, 0x0

    .line 368
    .line 369
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 373
    move-result v3

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 377
    move-result v1

    .line 378
    int-to-float v4, v1

    .line 379
    .line 380
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 384
    move-result v5

    .line 385
    .line 386
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 387
    .line 388
    move-object/from16 v1, p1

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    .line 393
    iput-boolean v9, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    .line 394
    goto :goto_1

    .line 395
    .line 396
    :cond_4
    cmpg-float v3, v12, v2

    .line 397
    .line 398
    if-gez v3, :cond_5

    .line 399
    .line 400
    sub-float v3, v2, v16

    .line 401
    .line 402
    cmpl-float v3, v12, v3

    .line 403
    .line 404
    if-ltz v3, :cond_5

    .line 405
    .line 406
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 407
    sub-float/2addr v2, v12

    .line 408
    .line 409
    div-float v2, v2, v16

    .line 410
    sub-float/2addr v14, v2

    .line 411
    mul-float/2addr v14, v15

    .line 412
    float-to-int v2, v14

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 416
    const/4 v2, 0x0

    .line 417
    .line 418
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 422
    move-result v3

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 426
    move-result v1

    .line 427
    int-to-float v4, v1

    .line 428
    .line 429
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 433
    move-result v5

    .line 434
    .line 435
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 436
    .line 437
    move-object/from16 v1, p1

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 441
    goto :goto_1

    .line 442
    .line 443
    :cond_5
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 444
    .line 445
    cmpl-float v2, v12, v1

    .line 446
    .line 447
    if-lez v2, :cond_6

    .line 448
    .line 449
    add-float v2, v1, v16

    .line 450
    .line 451
    cmpg-float v2, v12, v2

    .line 452
    .line 453
    if-gtz v2, :cond_6

    .line 454
    .line 455
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 456
    sub-float/2addr v12, v1

    .line 457
    .line 458
    div-float v12, v12, v16

    .line 459
    sub-float/2addr v14, v12

    .line 460
    mul-float/2addr v14, v15

    .line 461
    float-to-int v1, v14

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 465
    const/4 v2, 0x0

    .line 466
    .line 467
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 471
    move-result v3

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 475
    move-result v1

    .line 476
    int-to-float v4, v1

    .line 477
    .line 478
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 482
    move-result v5

    .line 483
    .line 484
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->hintLinePaint:Landroid/graphics/Paint;

    .line 485
    .line 486
    move-object/from16 v1, p1

    .line 487
    .line 488
    .line 489
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 490
    .line 491
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 495
    .line 496
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 497
    .line 498
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 499
    .line 500
    .line 501
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 502
    move-result-object v2

    .line 503
    .line 504
    check-cast v2, Landroid/graphics/PointF;

    .line 505
    .line 506
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 507
    .line 508
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 509
    .line 510
    .line 511
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 512
    move-result-object v3

    .line 513
    .line 514
    check-cast v3, Landroid/graphics/PointF;

    .line 515
    .line 516
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 520
    .line 521
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 522
    .line 523
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 524
    .line 525
    .line 526
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 527
    move-result-object v2

    .line 528
    .line 529
    check-cast v2, Landroid/graphics/PointF;

    .line 530
    .line 531
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 532
    .line 533
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 534
    .line 535
    .line 536
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 537
    move-result-object v3

    .line 538
    .line 539
    check-cast v3, Landroid/graphics/PointF;

    .line 540
    .line 541
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 545
    .line 546
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 547
    .line 548
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 549
    .line 550
    .line 551
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 552
    move-result-object v2

    .line 553
    .line 554
    check-cast v2, Landroid/graphics/PointF;

    .line 555
    .line 556
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 557
    .line 558
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 559
    .line 560
    .line 561
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 562
    move-result-object v3

    .line 563
    .line 564
    check-cast v3, Landroid/graphics/PointF;

    .line 565
    .line 566
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    .line 571
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 572
    .line 573
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 574
    const/4 v3, 0x3

    .line 575
    .line 576
    .line 577
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 578
    move-result-object v2

    .line 579
    .line 580
    check-cast v2, Landroid/graphics/PointF;

    .line 581
    .line 582
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 583
    .line 584
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 585
    .line 586
    .line 587
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 588
    move-result-object v4

    .line 589
    .line 590
    check-cast v4, Landroid/graphics/PointF;

    .line 591
    .line 592
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 596
    .line 597
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 601
    .line 602
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->rectPath:Landroid/graphics/Path;

    .line 603
    .line 604
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mRectPaint:Landroid/graphics/Paint;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 608
    .line 609
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 610
    .line 611
    if-nez v1, :cond_8

    .line 612
    .line 613
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 614
    .line 615
    if-eqz v2, :cond_7

    .line 616
    .line 617
    if-ne v2, v9, :cond_8

    .line 618
    .line 619
    :cond_7
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 620
    .line 621
    .line 622
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 623
    move-result-object v1

    .line 624
    .line 625
    check-cast v1, Landroid/graphics/PointF;

    .line 626
    .line 627
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 628
    .line 629
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 630
    .line 631
    .line 632
    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 633
    .line 634
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 635
    .line 636
    .line 637
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 638
    move-result-object v1

    .line 639
    .line 640
    check-cast v1, Landroid/graphics/PointF;

    .line 641
    .line 642
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    .line 643
    .line 644
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 645
    .line 646
    .line 647
    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 648
    .line 649
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 650
    .line 651
    if-eqz v1, :cond_a

    .line 652
    .line 653
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 654
    .line 655
    .line 656
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 657
    move-result-object v1

    .line 658
    .line 659
    check-cast v1, Landroid/graphics/PointF;

    .line 660
    .line 661
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    .line 662
    .line 663
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 664
    .line 665
    .line 666
    invoke-direct {v0, v7, v1, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 667
    goto :goto_3

    .line 668
    .line 669
    :cond_8
    if-nez v1, :cond_a

    .line 670
    .line 671
    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 672
    .line 673
    if-ne v1, v8, :cond_a

    .line 674
    .line 675
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 676
    .line 677
    if-eqz v1, :cond_a

    .line 678
    .line 679
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 680
    .line 681
    .line 682
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 683
    move-result-object v1

    .line 684
    .line 685
    check-cast v1, Landroid/graphics/PointF;

    .line 686
    .line 687
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 688
    .line 689
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 690
    .line 691
    .line 692
    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 693
    .line 694
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 695
    .line 696
    .line 697
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 698
    move-result-object v1

    .line 699
    .line 700
    check-cast v1, Landroid/graphics/PointF;

    .line 701
    .line 702
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->editImgBtn:Landroid/graphics/Bitmap;

    .line 703
    .line 704
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 705
    .line 706
    .line 707
    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 708
    .line 709
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 710
    .line 711
    .line 712
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 713
    move-result-object v1

    .line 714
    .line 715
    check-cast v1, Landroid/graphics/PointF;

    .line 716
    .line 717
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationImgBtn:Landroid/graphics/Bitmap;

    .line 718
    .line 719
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 720
    .line 721
    .line 722
    invoke-direct {v0, v7, v1, v2, v4}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 723
    .line 724
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 725
    .line 726
    .line 727
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    move-result-object v1

    .line 729
    .line 730
    check-cast v1, Landroid/graphics/PointF;

    .line 731
    .line 732
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    .line 733
    .line 734
    if-eqz v2, :cond_9

    .line 735
    .line 736
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeOffImgBtn:Landroid/graphics/Bitmap;

    .line 737
    goto :goto_2

    .line 738
    .line 739
    :cond_9
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeOnImageBtn:Landroid/graphics/Bitmap;

    .line 740
    .line 741
    :goto_2
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    .line 742
    .line 743
    .line 744
    invoke-direct {v0, v7, v1, v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->drawActions(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 745
    :cond_a
    :goto_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    int-to-float p1, p2

    .line 5
    .line 6
    sub-int p2, p4, p2

    .line 7
    int-to-float p2, p2

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float v1, p2, v0

    .line 12
    add-float/2addr v1, p1

    .line 13
    int-to-float v2, p3

    .line 14
    .line 15
    sub-int p3, p5, p3

    .line 16
    int-to-float p3, p3

    .line 17
    .line 18
    div-float v0, p3, v0

    .line 19
    add-float/2addr v0, v2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 22
    .line 23
    const/high16 v4, 0x40a00000    # 5.0f

    .line 24
    .line 25
    sub-float v5, v1, v4

    .line 26
    .line 27
    sub-float v6, v0, v4

    .line 28
    add-float/2addr v1, v4

    .line 29
    add-float/2addr v0, v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    .line 34
    .line 35
    const v0, 0x3dcccccd    # 0.1f

    .line 36
    mul-float/2addr p2, v0

    .line 37
    mul-float/2addr v0, p3

    .line 38
    .line 39
    .line 40
    const v1, 0x3df5c28f    # 0.12f

    .line 41
    mul-float/2addr p3, v1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/video/attachment/DrawRectView;->viewBoundRect:Landroid/graphics/RectF;

    .line 44
    add-float/2addr p1, p2

    .line 45
    add-float/2addr v2, v0

    .line 46
    int-to-float p4, p4

    .line 47
    sub-float/2addr p4, p2

    .line 48
    int-to-float p2, p5

    .line 49
    sub-float/2addr p2, p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    .line 20
    if-eqz v3, :cond_1b

    .line 21
    .line 22
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 23
    const/4 v10, 0x3

    .line 24
    const/4 v11, 0x2

    .line 25
    .line 26
    if-eq v3, v6, :cond_f

    .line 27
    .line 28
    if-eq v3, v11, :cond_1

    .line 29
    .line 30
    if-eq v3, v10, :cond_0

    .line 31
    :goto_0
    move v1, v6

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 45
    .line 46
    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 52
    move-result v10

    .line 53
    .line 54
    if-ne v10, v4, :cond_2

    .line 55
    .line 56
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    check-cast v4, Landroid/graphics/PointF;

    .line 63
    .line 64
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 65
    .line 66
    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v10

    .line 71
    .line 72
    check-cast v10, Landroid/graphics/PointF;

    .line 73
    .line 74
    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 75
    add-float/2addr v4, v10

    .line 76
    .line 77
    const/high16 v10, 0x40000000    # 2.0f

    .line 78
    div-float/2addr v4, v10

    .line 79
    .line 80
    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    check-cast v4, Landroid/graphics/PointF;

    .line 89
    .line 90
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 91
    .line 92
    iget-object v12, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 93
    .line 94
    .line 95
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v11

    .line 97
    .line 98
    check-cast v11, Landroid/graphics/PointF;

    .line 99
    .line 100
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 101
    add-float/2addr v4, v11

    .line 102
    div-float/2addr v4, v10

    .line 103
    .line 104
    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 105
    .line 106
    :cond_2
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 107
    .line 108
    if-nez v4, :cond_6

    .line 109
    .line 110
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    .line 111
    .line 112
    if-nez v4, :cond_3

    .line 113
    .line 114
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    .line 115
    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineLeft:Z

    .line 119
    .line 120
    if-nez v4, :cond_3

    .line 121
    .line 122
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineTop:Z

    .line 123
    .line 124
    if-nez v4, :cond_3

    .line 125
    .line 126
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineRight:Z

    .line 127
    .line 128
    if-nez v4, :cond_3

    .line 129
    .line 130
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineBottom:Z

    .line 131
    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    :cond_3
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    .line 135
    .line 136
    if-nez v4, :cond_4

    .line 137
    .line 138
    iput-boolean v6, v0, Lcom/narvii/video/attachment/DrawRectView;->forceAligningHintLine:Z

    .line 139
    .line 140
    new-instance v4, Lcom/narvii/video/attachment/DrawRectView$1;

    .line 141
    .line 142
    .line 143
    invoke-direct {v4, v0}, Lcom/narvii/video/attachment/DrawRectView$1;-><init>(Lcom/narvii/video/attachment/DrawRectView;)V

    .line 144
    .line 145
    const-wide/16 v10, 0xfa

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v10, v11}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 149
    .line 150
    :cond_4
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    .line 151
    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 155
    .line 156
    iput v2, v4, Landroid/graphics/PointF;->y:F

    .line 157
    .line 158
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    .line 159
    .line 160
    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 161
    .line 162
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    .line 163
    .line 164
    iput v5, v2, Landroid/graphics/PointF;->y:F

    .line 165
    .line 166
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 167
    .line 168
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    .line 172
    move-result v4

    .line 173
    .line 174
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 175
    .line 176
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 177
    .line 178
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    .line 182
    move-result v4

    .line 183
    .line 184
    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 185
    .line 186
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 190
    move-result v2

    .line 191
    .line 192
    :cond_5
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    .line 193
    .line 194
    if-eqz v4, :cond_6

    .line 195
    .line 196
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 197
    .line 198
    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 199
    .line 200
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    .line 201
    .line 202
    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 203
    .line 204
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    .line 205
    .line 206
    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 207
    .line 208
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 209
    .line 210
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 214
    move-result v4

    .line 215
    .line 216
    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 217
    .line 218
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 219
    .line 220
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 224
    move-result v4

    .line 225
    .line 226
    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 227
    .line 228
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 232
    move-result v1

    .line 233
    .line 234
    :cond_6
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterVertical:Z

    .line 235
    .line 236
    if-nez v4, :cond_7

    .line 237
    .line 238
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 239
    .line 240
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 241
    .line 242
    cmpl-float v4, v4, v5

    .line 243
    .line 244
    if-eqz v4, :cond_7

    .line 245
    .line 246
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 250
    move-result v4

    .line 251
    .line 252
    iget-object v10, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 253
    .line 254
    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 255
    sub-float/2addr v4, v10

    .line 256
    .line 257
    .line 258
    const v10, 0x3f333333    # 0.7f

    .line 259
    mul-float/2addr v4, v10

    .line 260
    add-float/2addr v1, v4

    .line 261
    .line 262
    :cond_7
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->hitHintLineCenterHorizontal:Z

    .line 263
    .line 264
    if-nez v4, :cond_8

    .line 265
    .line 266
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 267
    .line 268
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 269
    .line 270
    cmpl-float v4, v4, v5

    .line 271
    .line 272
    if-eqz v4, :cond_8

    .line 273
    .line 274
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->viewCenterRect:Landroid/graphics/RectF;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    .line 278
    move-result v4

    .line 279
    .line 280
    iget-object v5, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 281
    .line 282
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 283
    sub-float/2addr v4, v5

    .line 284
    .line 285
    .line 286
    const v5, 0x3f19999a    # 0.6f

    .line 287
    mul-float/2addr v4, v5

    .line 288
    add-float/2addr v2, v4

    .line 289
    .line 290
    :cond_8
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 291
    .line 292
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 293
    .line 294
    sub-float v4, v1, v4

    .line 295
    float-to-double v4, v4

    .line 296
    .line 297
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 298
    .line 299
    .line 300
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 301
    move-result-wide v4

    .line 302
    .line 303
    iget-object v12, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 304
    .line 305
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 306
    .line 307
    sub-float v12, v2, v12

    .line 308
    float-to-double v12, v12

    .line 309
    .line 310
    .line 311
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 312
    move-result-wide v12

    .line 313
    add-double/2addr v4, v12

    .line 314
    .line 315
    .line 316
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 317
    move-result-wide v4

    .line 318
    .line 319
    iput-wide v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 320
    .line 321
    const/high16 v4, 0x42c80000    # 100.0f

    .line 322
    .line 323
    cmpg-float v4, v1, v4

    .line 324
    .line 325
    if-lez v4, :cond_9

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 329
    move-result v4

    .line 330
    int-to-float v4, v4

    .line 331
    .line 332
    cmpl-float v4, v1, v4

    .line 333
    .line 334
    if-gez v4, :cond_9

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 338
    move-result v4

    .line 339
    int-to-float v4, v4

    .line 340
    .line 341
    cmpl-float v4, v2, v4

    .line 342
    .line 343
    if-gez v4, :cond_9

    .line 344
    .line 345
    const/high16 v4, 0x41a00000    # 20.0f

    .line 346
    .line 347
    cmpg-float v4, v2, v4

    .line 348
    .line 349
    if-gtz v4, :cond_a

    .line 350
    :cond_9
    move v1, v6

    .line 351
    .line 352
    goto/16 :goto_2

    .line 353
    .line 354
    :cond_a
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    .line 355
    .line 356
    if-eqz v4, :cond_b

    .line 357
    .line 358
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_b
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 363
    .line 364
    if-eqz v4, :cond_c

    .line 365
    .line 366
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 367
    .line 368
    if-eqz v4, :cond_c

    .line 369
    .line 370
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 371
    .line 372
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 373
    .line 374
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 375
    .line 376
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 377
    sub-float/2addr v4, v5

    .line 378
    float-to-double v4, v4

    .line 379
    .line 380
    .line 381
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 382
    move-result-wide v4

    .line 383
    .line 384
    iget-object v7, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 385
    .line 386
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 387
    .line 388
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 389
    sub-float/2addr v7, v12

    .line 390
    float-to-double v12, v7

    .line 391
    .line 392
    .line 393
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 394
    move-result-wide v12

    .line 395
    add-double/2addr v4, v12

    .line 396
    .line 397
    .line 398
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 399
    move-result-wide v4

    .line 400
    .line 401
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 402
    .line 403
    sub-float v7, v1, v7

    .line 404
    float-to-double v12, v7

    .line 405
    .line 406
    .line 407
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 408
    move-result-wide v12

    .line 409
    .line 410
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 411
    .line 412
    sub-float v7, v2, v7

    .line 413
    float-to-double v14, v7

    .line 414
    .line 415
    .line 416
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 417
    move-result-wide v14

    .line 418
    add-double/2addr v12, v14

    .line 419
    .line 420
    .line 421
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 422
    move-result-wide v12

    .line 423
    div-double/2addr v12, v4

    .line 424
    double-to-float v4, v12

    .line 425
    .line 426
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 427
    .line 428
    sub-float v5, v2, v5

    .line 429
    float-to-double v12, v5

    .line 430
    .line 431
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 432
    .line 433
    sub-float v5, v1, v5

    .line 434
    float-to-double v14, v5

    .line 435
    .line 436
    .line 437
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 438
    move-result-wide v12

    .line 439
    .line 440
    iget-object v5, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 441
    .line 442
    iget v7, v5, Landroid/graphics/PointF;->y:F

    .line 443
    .line 444
    iget v14, v3, Landroid/graphics/PointF;->y:F

    .line 445
    sub-float/2addr v7, v14

    .line 446
    float-to-double v14, v7

    .line 447
    .line 448
    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 449
    .line 450
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 451
    sub-float/2addr v5, v7

    .line 452
    float-to-double v6, v5

    .line 453
    .line 454
    .line 455
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 456
    move-result-wide v5

    .line 457
    sub-double/2addr v12, v5

    .line 458
    double-to-float v5, v12

    .line 459
    .line 460
    const/high16 v6, 0x43340000    # 180.0f

    .line 461
    mul-float/2addr v5, v6

    .line 462
    float-to-double v5, v5

    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 468
    div-double/2addr v5, v12

    .line 469
    double-to-float v5, v5

    .line 470
    .line 471
    iget-object v6, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 472
    .line 473
    new-instance v7, Landroid/graphics/PointF;

    .line 474
    .line 475
    iget v12, v3, Landroid/graphics/PointF;->x:F

    .line 476
    .line 477
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 478
    .line 479
    .line 480
    invoke-direct {v7, v12, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 481
    neg-float v3, v5

    .line 482
    .line 483
    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 484
    .line 485
    .line 486
    invoke-interface {v6, v4, v7, v3, v5}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onScaleAndRotate(FLandroid/graphics/PointF;FI)V

    .line 487
    .line 488
    :cond_c
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 489
    .line 490
    if-nez v3, :cond_d

    .line 491
    .line 492
    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionX:F

    .line 493
    .line 494
    sub-float v3, v1, v3

    .line 495
    float-to-double v3, v3

    .line 496
    .line 497
    .line 498
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 499
    move-result-wide v3

    .line 500
    .line 501
    iget v5, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionY:F

    .line 502
    .line 503
    sub-float v5, v2, v5

    .line 504
    float-to-double v5, v5

    .line 505
    .line 506
    .line 507
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 508
    move-result-wide v5

    .line 509
    add-double/2addr v3, v5

    .line 510
    .line 511
    .line 512
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 513
    move-result-wide v3

    .line 514
    .line 515
    cmpl-double v3, v3, v8

    .line 516
    .line 517
    if-ltz v3, :cond_d

    .line 518
    const/4 v3, 0x1

    .line 519
    .line 520
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 521
    .line 522
    :cond_d
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 523
    .line 524
    if-eqz v3, :cond_e

    .line 525
    .line 526
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 527
    .line 528
    if-eqz v3, :cond_e

    .line 529
    .line 530
    iget-boolean v4, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 531
    .line 532
    if-eqz v4, :cond_e

    .line 533
    .line 534
    iget-object v4, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 535
    .line 536
    new-instance v5, Landroid/graphics/PointF;

    .line 537
    .line 538
    .line 539
    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 540
    .line 541
    iget v6, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 542
    .line 543
    .line 544
    invoke-interface {v3, v4, v5, v6}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 545
    .line 546
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 550
    .line 551
    :cond_e
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 555
    :goto_1
    const/4 v1, 0x1

    .line 556
    .line 557
    goto/16 :goto_8

    .line 558
    .line 559
    :goto_2
    iput-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mMoveOutScreen:Z

    .line 560
    .line 561
    goto/16 :goto_8

    .line 562
    .line 563
    .line 564
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 565
    move-result-wide v1

    .line 566
    .line 567
    iget-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    .line 568
    sub-long/2addr v1, v5

    .line 569
    .line 570
    iget-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 571
    .line 572
    cmpg-double v3, v5, v8

    .line 573
    .line 574
    if-gez v3, :cond_15

    .line 575
    .line 576
    const-wide/16 v5, 0xc8

    .line 577
    .line 578
    cmp-long v1, v1, v5

    .line 579
    .line 580
    if-gtz v1, :cond_15

    .line 581
    .line 582
    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 583
    .line 584
    if-nez v1, :cond_11

    .line 585
    .line 586
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 587
    .line 588
    if-nez v2, :cond_15

    .line 589
    .line 590
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 591
    .line 592
    if-nez v2, :cond_15

    .line 593
    .line 594
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 595
    .line 596
    if-nez v2, :cond_15

    .line 597
    .line 598
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 599
    .line 600
    if-eqz v2, :cond_10

    .line 601
    .line 602
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    .line 603
    .line 604
    if-eqz v2, :cond_15

    .line 605
    .line 606
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 607
    .line 608
    if-nez v3, :cond_15

    .line 609
    .line 610
    .line 611
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;->onDrawRectClick(I)V

    .line 612
    goto :goto_3

    .line 613
    .line 614
    :cond_10
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 615
    .line 616
    if-eqz v2, :cond_15

    .line 617
    .line 618
    .line 619
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    .line 620
    goto :goto_3

    .line 621
    :cond_11
    const/4 v2, 0x1

    .line 622
    .line 623
    if-ne v1, v2, :cond_13

    .line 624
    .line 625
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 626
    .line 627
    if-nez v2, :cond_15

    .line 628
    .line 629
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 630
    .line 631
    if-nez v2, :cond_15

    .line 632
    .line 633
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 634
    .line 635
    if-nez v2, :cond_15

    .line 636
    .line 637
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 638
    .line 639
    if-eqz v2, :cond_12

    .line 640
    .line 641
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    .line 642
    .line 643
    if-eqz v2, :cond_15

    .line 644
    .line 645
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 646
    .line 647
    if-nez v3, :cond_15

    .line 648
    .line 649
    .line 650
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;->onDrawRectClick(I)V

    .line 651
    goto :goto_3

    .line 652
    .line 653
    :cond_12
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 654
    .line 655
    if-eqz v2, :cond_15

    .line 656
    .line 657
    .line 658
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    .line 659
    goto :goto_3

    .line 660
    .line 661
    :cond_13
    if-ne v1, v10, :cond_14

    .line 662
    .line 663
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 664
    .line 665
    if-nez v2, :cond_15

    .line 666
    .line 667
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 668
    .line 669
    if-eqz v2, :cond_15

    .line 670
    .line 671
    .line 672
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    .line 673
    goto :goto_3

    .line 674
    .line 675
    :cond_14
    if-ne v1, v11, :cond_15

    .line 676
    .line 677
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 678
    .line 679
    if-nez v2, :cond_15

    .line 680
    .line 681
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 682
    .line 683
    if-eqz v2, :cond_15

    .line 684
    .line 685
    .line 686
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onBeyondDrawRectClick(I)V

    .line 687
    .line 688
    :cond_15
    :goto_3
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 689
    .line 690
    if-eqz v1, :cond_16

    .line 691
    .line 692
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 693
    .line 694
    if-eqz v1, :cond_16

    .line 695
    .line 696
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 697
    .line 698
    .line 699
    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onDel(I)V

    .line 700
    .line 701
    :cond_16
    iget v1, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 702
    .line 703
    if-nez v1, :cond_17

    .line 704
    .line 705
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 706
    .line 707
    if-eqz v2, :cond_1a

    .line 708
    .line 709
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 710
    .line 711
    if-eqz v2, :cond_1a

    .line 712
    .line 713
    .line 714
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    .line 715
    goto :goto_4

    .line 716
    :cond_17
    const/4 v2, 0x1

    .line 717
    .line 718
    if-ne v1, v2, :cond_18

    .line 719
    .line 720
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 721
    .line 722
    if-eqz v2, :cond_1a

    .line 723
    .line 724
    iget-object v2, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 725
    .line 726
    if-eqz v2, :cond_1a

    .line 727
    .line 728
    .line 729
    invoke-interface {v2, v1}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    .line 730
    goto :goto_4

    .line 731
    .line 732
    :cond_18
    if-ne v1, v4, :cond_1a

    .line 733
    .line 734
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    .line 735
    .line 736
    if-eqz v1, :cond_19

    .line 737
    .line 738
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mPipVideoMuteListener:Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;

    .line 739
    .line 740
    if-eqz v1, :cond_19

    .line 741
    .line 742
    iget-boolean v2, v0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    .line 743
    .line 744
    .line 745
    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;->onPipVideoMute(Z)V

    .line 746
    .line 747
    :cond_19
    iget-boolean v1, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 748
    .line 749
    if-eqz v1, :cond_1a

    .line 750
    .line 751
    iget-object v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 752
    .line 753
    if-eqz v1, :cond_1a

    .line 754
    .line 755
    iget v2, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 756
    .line 757
    .line 758
    invoke-interface {v1, v2}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onEdit(I)V

    .line 759
    .line 760
    :cond_1a
    :goto_4
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 761
    .line 762
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 763
    .line 764
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 765
    .line 766
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->isDragging:Z

    .line 767
    .line 768
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 769
    .line 770
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canHorizFlipClick:Z

    .line 771
    .line 772
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canMuteClick:Z

    .line 773
    .line 774
    const-wide/16 v1, 0x0

    .line 775
    .line 776
    iput-wide v1, v0, Lcom/narvii/video/attachment/DrawRectView;->mClickMoveDistance:D

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 780
    .line 781
    goto/16 :goto_1

    .line 782
    .line 783
    :cond_1b
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningCenterHintLine:Landroid/graphics/PointF;

    .line 784
    .line 785
    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 786
    .line 787
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 788
    .line 789
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningRightBottomHintLine:Landroid/graphics/PointF;

    .line 790
    .line 791
    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 792
    .line 793
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 794
    .line 795
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->movementAligningLeftTopHintLine:Landroid/graphics/PointF;

    .line 796
    .line 797
    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 798
    .line 799
    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 800
    .line 801
    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 803
    move-result v3

    .line 804
    .line 805
    iput v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionX:F

    .line 806
    .line 807
    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 809
    move-result v3

    .line 810
    .line 811
    iput v3, v0, Lcom/narvii/video/attachment/DrawRectView;->initialMotionY:F

    .line 812
    .line 813
    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 815
    move-result-wide v5

    .line 816
    .line 817
    iput-wide v5, v0, Lcom/narvii/video/attachment/DrawRectView;->mPrevMillionSecond:J

    .line 818
    .line 819
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->rotationRectF:Landroid/graphics/RectF;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 823
    move-result v3

    .line 824
    .line 825
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 826
    .line 827
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->deleteRectF:Landroid/graphics/RectF;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 831
    move-result v3

    .line 832
    .line 833
    if-eqz v3, :cond_1c

    .line 834
    .line 835
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canScalOrRotate:Z

    .line 836
    .line 837
    if-nez v3, :cond_1c

    .line 838
    const/4 v3, 0x1

    .line 839
    goto :goto_5

    .line 840
    :cond_1c
    move v3, v7

    .line 841
    .line 842
    :goto_5
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canDel:Z

    .line 843
    .line 844
    iget v3, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 845
    .line 846
    if-nez v3, :cond_1e

    .line 847
    .line 848
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 849
    .line 850
    if-eqz v3, :cond_1d

    .line 851
    .line 852
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 856
    move-result v3

    .line 857
    .line 858
    if-eqz v3, :cond_1d

    .line 859
    const/4 v7, 0x1

    .line 860
    .line 861
    :cond_1d
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 862
    goto :goto_7

    .line 863
    :cond_1e
    const/4 v5, 0x1

    .line 864
    .line 865
    if-ne v3, v5, :cond_20

    .line 866
    .line 867
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 868
    .line 869
    if-eqz v3, :cond_1f

    .line 870
    .line 871
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 875
    move-result v3

    .line 876
    .line 877
    if-eqz v3, :cond_1f

    .line 878
    const/4 v7, 0x1

    .line 879
    .line 880
    :cond_1f
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 881
    goto :goto_7

    .line 882
    .line 883
    :cond_20
    if-ne v3, v4, :cond_23

    .line 884
    .line 885
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 886
    .line 887
    if-eqz v3, :cond_21

    .line 888
    .line 889
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->editRectF:Landroid/graphics/RectF;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 893
    move-result v3

    .line 894
    .line 895
    if-eqz v3, :cond_21

    .line 896
    const/4 v3, 0x1

    .line 897
    goto :goto_6

    .line 898
    :cond_21
    move v3, v7

    .line 899
    .line 900
    :goto_6
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->canEdit:Z

    .line 901
    .line 902
    iget-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 903
    .line 904
    if-eqz v3, :cond_22

    .line 905
    .line 906
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->volumeRectF:Landroid/graphics/RectF;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 910
    move-result v3

    .line 911
    .line 912
    if-eqz v3, :cond_22

    .line 913
    const/4 v7, 0x1

    .line 914
    .line 915
    :cond_22
    iput-boolean v7, v0, Lcom/narvii/video/attachment/DrawRectView;->canVolume:Z

    .line 916
    .line 917
    :cond_23
    :goto_7
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    .line 918
    .line 919
    if-eqz v3, :cond_24

    .line 920
    .line 921
    new-instance v5, Landroid/graphics/PointF;

    .line 922
    .line 923
    .line 924
    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 925
    .line 926
    iget v6, v0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 927
    .line 928
    .line 929
    invoke-interface {v3, v5, v6}, Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;->onTouchDown(Landroid/graphics/PointF;I)V

    .line 930
    .line 931
    :cond_24
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 932
    .line 933
    if-eqz v3, :cond_25

    .line 934
    .line 935
    .line 936
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 937
    move-result v3

    .line 938
    .line 939
    if-ne v3, v4, :cond_25

    .line 940
    float-to-int v3, v1

    .line 941
    float-to-int v4, v2

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/attachment/DrawRectView;->curPointIsInnerDrawRect(II)Z

    .line 945
    move-result v3

    .line 946
    .line 947
    iput-boolean v3, v0, Lcom/narvii/video/attachment/DrawRectView;->isInnerDrawRect:Z

    .line 948
    .line 949
    :cond_25
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->prePointF:Landroid/graphics/PointF;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 953
    .line 954
    iget-object v3, v0, Lcom/narvii/video/attachment/DrawRectView;->lastDragPointF:Landroid/graphics/PointF;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 958
    .line 959
    goto/16 :goto_1

    .line 960
    :goto_8
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mListPointF:Ljava/util/List;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/video/attachment/DrawRectView;->viewMode:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setDrawRectClickListener(Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mDrawRectClickListener:Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;

    return-void
.end method

.method public setMuteVisible(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mHasAudio:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mListener:Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;

    return-void
.end method

.method public setPipVideoMute(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->pipVideoMute:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setPipVideoMuteListener(Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mPipVideoMuteListener:Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/DrawRectView;->showEdit:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setStickerMuteIndex(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
.end method

.method public setStickerMuteListenser(Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/DrawRectView;->mStickerMuteListenser:Lcom/narvii/video/attachment/DrawRectView$onStickerMuteListenser;

    return-void
.end method
