.class public final Lcom/narvii/video/widget/MediaRetrieveController2;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;,
        Lcom/narvii/video/widget/MediaRetrieveController2$Companion;,
        Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;,
        Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;,
        Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;,
        Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;,
        Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/MediaRetrieveController2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FORCE_MAX_LENGTH_RATE:F = 10.0f


# instance fields
.field private allEndFlag:Z

.field private final baseRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currHandlerLeftEnd:F

.field private currHandlerRightEnd:F

.field private final cutRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cutterRealMaxLengthMs:J

.field private cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private flagShowCutter:Z

.field private handlerWidth:I

.field private isCenterPressed:Z

.field private isLeftHandlerActive:Z

.field private isRightHandlerActive:Z

.field private lastDownX:F

.field private newTargetX:F

.field private useFakeEndPos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/MediaRetrieveController2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2;->Companion:Lcom/narvii/video/widget/MediaRetrieveController2$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 5
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 6
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 7
    sget-object p1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 8
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getResources(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 13
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 14
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 15
    sget-object p1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 16
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "getResources(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    return-void
.end method

.method private final getCutterRealEndTime()J
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    .line 13
    add-long/2addr v0, v2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    return-wide v0
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaRetrieveController2;JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJILjava/lang/Object;)V
    .locals 17

    .line 1
    .line 2
    and-int/lit8 v0, p14, 0x8

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move-wide v9, v1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    move-wide/from16 v9, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v0, p14, 0x10

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    move-wide v11, v1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    move-wide/from16 v11, p8

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v0, p14, 0x20

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    move-wide v13, v1

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_2
    move-wide/from16 v13, p10

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v0, p14, 0x40

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    move-wide v15, v1

    .line 32
    goto :goto_3

    .line 33
    .line 34
    :cond_3
    move-wide/from16 v15, p12

    .line 35
    .line 36
    :goto_3
    move-object/from16 v3, p0

    .line 37
    .line 38
    move-wide/from16 v4, p1

    .line 39
    .line 40
    move-wide/from16 v6, p3

    .line 41
    .line 42
    move-object/from16 v8, p5

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v3 .. v16}, Lcom/narvii/video/widget/MediaRetrieveController2;->initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V

    .line 46
    return-void
.end method

.method private final isMoveEnable()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lw7/s;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 23
    throw v0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    .line 35
    move-result-wide v4

    .line 36
    .line 37
    cmp-long v0, v2, v4

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    return v1
.end method

.method private final isSeekToTimeAtLeft()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    :cond_0
    :goto_0
    move v1, v2

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final getCutterEndPosition()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final getCutterStartPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V
    .locals 13
    .param p5    # Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 8
    long-to-float v5, v1

    .line 9
    .line 10
    const/high16 v6, 0x41200000    # 10.0f

    .line 11
    mul-float/2addr v5, v6

    .line 12
    .line 13
    sub-long v7, p8, p6

    .line 14
    long-to-float v7, v7

    .line 15
    .line 16
    cmpg-float v5, v5, v7

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    .line 20
    const-wide/16 v9, 0x0

    .line 21
    .line 22
    if-gtz v5, :cond_1

    .line 23
    .line 24
    iput-boolean v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 25
    .line 26
    iput-wide v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    .line 27
    .line 28
    cmp-long v5, p6, v9

    .line 29
    .line 30
    if-lez v5, :cond_0

    .line 31
    .line 32
    move-wide/from16 v11, p6

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide v11, v9

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v4, v11, v12}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerStartMs(J)V

    .line 38
    .line 39
    sub-long v1, p8, v1

    .line 40
    long-to-float v1, v1

    .line 41
    mul-float/2addr v1, v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    .line 45
    move-result-wide v11

    .line 46
    long-to-float v2, v11

    .line 47
    sub-float/2addr v1, v2

    .line 48
    .line 49
    const/high16 v2, 0x41100000    # 9.0f

    .line 50
    div-float/2addr v1, v2

    .line 51
    float-to-long v1, v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerEndMs(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    .line 62
    move-result-wide v11

    .line 63
    sub-long/2addr v1, v11

    .line 64
    long-to-float v1, v1

    .line 65
    div-float/2addr v1, v6

    .line 66
    float-to-long v1, v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMinLengthMs(J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMaxLengthMs(J)V

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_1
    iput-boolean v8, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 76
    .line 77
    cmp-long v5, p6, v9

    .line 78
    .line 79
    if-lez v5, :cond_2

    .line 80
    .line 81
    move-wide/from16 v5, p6

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move-wide v5, v9

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerStartMs(J)V

    .line 87
    .line 88
    cmp-long v5, p8, v9

    .line 89
    .line 90
    if-lez v5, :cond_3

    .line 91
    .line 92
    move-wide/from16 v5, p8

    .line 93
    goto :goto_2

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    .line 97
    move-result-wide v5

    .line 98
    add-long/2addr v5, v1

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerEndMs(J)V

    .line 102
    move-wide v5, p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMinLengthMs(J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMaxLengthMs(J)V

    .line 109
    .line 110
    :goto_3
    cmp-long v1, p10, v9

    .line 111
    .line 112
    if-lez v1, :cond_4

    .line 113
    .line 114
    move-wide/from16 v1, p10

    .line 115
    goto :goto_4

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    .line 119
    move-result-wide v1

    .line 120
    .line 121
    .line 122
    :goto_4
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterStartMs(J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 126
    move-result-wide v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    .line 130
    move-result-wide v5

    .line 131
    add-long/2addr v1, v5

    .line 132
    .line 133
    cmp-long v1, p12, v1

    .line 134
    .line 135
    if-ltz v1, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 139
    move-result-wide v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    .line 143
    move-result-wide v5

    .line 144
    add-long/2addr v1, v5

    .line 145
    .line 146
    cmp-long v1, p12, v1

    .line 147
    .line 148
    if-gtz v1, :cond_6

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    .line 152
    move-result-wide v1

    .line 153
    .line 154
    cmp-long v1, p12, v1

    .line 155
    .line 156
    if-lez v1, :cond_5

    .line 157
    goto :goto_5

    .line 158
    .line 159
    :cond_5
    move-wide/from16 v1, p12

    .line 160
    goto :goto_6

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_5
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    .line 164
    move-result-wide v1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 168
    move-result-wide v5

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    .line 172
    move-result-wide v9

    .line 173
    add-long/2addr v5, v9

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 177
    move-result-wide v1

    .line 178
    .line 179
    .line 180
    :goto_6
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterEndMs(J)V

    .line 181
    .line 182
    iput-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    .line 183
    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 190
    move-result-wide v1

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 194
    move-result-wide v4

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 198
    move-result v6

    .line 199
    xor-int/2addr v6, v7

    .line 200
    const/4 v9, 0x0

    .line 201
    .line 202
    move-object/from16 p1, p5

    .line 203
    move-wide p2, v1

    .line 204
    .line 205
    move-wide/from16 p4, v4

    .line 206
    .line 207
    move/from16 p6, v6

    .line 208
    .line 209
    move/from16 p7, v9

    .line 210
    .line 211
    .line 212
    invoke-interface/range {p1 .. p7}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 213
    .line 214
    :cond_7
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 215
    const/4 v2, 0x0

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    .line 220
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    .line 225
    iput-boolean v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 229
    return-void
.end method

.method public final isTouchInSlideHandler(F)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 7
    float-to-double v3, v2

    .line 8
    .line 9
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 10
    int-to-double v6, v5

    .line 11
    .line 12
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 13
    mul-double/2addr v6, v8

    .line 14
    sub-double/2addr v3, v6

    .line 15
    float-to-double v6, v2

    .line 16
    int-to-double v10, v5

    .line 17
    .line 18
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 19
    mul-double/2addr v10, v12

    .line 20
    add-double/2addr v6, v10

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 23
    float-to-double v10, v1

    .line 24
    int-to-double v14, v5

    .line 25
    mul-double/2addr v14, v12

    .line 26
    sub-double/2addr v10, v14

    .line 27
    float-to-double v1, v1

    .line 28
    int-to-double v12, v5

    .line 29
    mul-double/2addr v12, v8

    .line 30
    add-double/2addr v1, v12

    .line 31
    .line 32
    move/from16 v5, p1

    .line 33
    float-to-double v8, v5

    .line 34
    .line 35
    cmpg-double v3, v3, v8

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    .line 39
    if-gtz v3, :cond_0

    .line 40
    .line 41
    cmpg-double v3, v8, v6

    .line 42
    .line 43
    if-gtz v3, :cond_0

    .line 44
    .line 45
    iput-boolean v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 46
    .line 47
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 48
    .line 49
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    cmpg-double v3, v6, v8

    .line 53
    .line 54
    if-gtz v3, :cond_1

    .line 55
    .line 56
    cmpg-double v3, v8, v10

    .line 57
    .line 58
    if-gtz v3, :cond_1

    .line 59
    .line 60
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 61
    .line 62
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 63
    .line 64
    iput-boolean v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    cmpg-double v3, v10, v8

    .line 68
    .line 69
    if-gtz v3, :cond_2

    .line 70
    .line 71
    cmpg-double v1, v8, v1

    .line 72
    .line 73
    if-gtz v1, :cond_2

    .line 74
    .line 75
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 76
    .line 77
    iput-boolean v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 78
    .line 79
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v4, v5

    .line 94
    :cond_4
    :goto_1
    return v4
.end method

.method public final layoutRect(IIII)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 26
    .line 27
    add-int v2, p1, v1

    .line 28
    .line 29
    sub-int v1, p3, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateScale(II)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    .line 44
    move-result-wide v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    .line 48
    move-result v2

    .line 49
    int-to-float p2, p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    .line 57
    move-result v3

    .line 58
    int-to-float p4, p4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    .line 72
    move-result v2

    .line 73
    int-to-float p2, p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    .line 77
    move-result-wide v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    .line 81
    move-result v3

    .line 82
    int-to-float p4, p4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    .line 87
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    .line 91
    move-result-wide v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getLengthInController(J)F

    .line 95
    move-result p4

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setCutterMinWidth(F)V

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    .line 104
    move-result-wide v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getLengthInController(J)F

    .line 108
    move-result p4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setCutterMaxWidth(F)V

    .line 112
    .line 113
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 114
    .line 115
    iget p4, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 116
    add-int/2addr p1, p4

    .line 117
    int-to-float p1, p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setControllerLeftEnd(F)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 123
    .line 124
    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 125
    sub-int/2addr p3, p2

    .line 126
    int-to-float p2, p3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setControllerRightEnd(F)V

    .line 130
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 20
    sub-float/2addr v1, v0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    int-to-float v2, v2

    .line 29
    sub-float/2addr v0, v2

    .line 30
    .line 31
    cmpl-float v0, v1, v0

    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    if-gez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isMoveEnable()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v0, v1

    .line 46
    .line 47
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->allEndFlag:Z

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 54
    .line 55
    iget v7, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget v0, v6, Landroid/graphics/RectF;->left:F

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 65
    move-result v4

    .line 66
    .line 67
    cmpg-float v0, v0, v4

    .line 68
    .line 69
    if-gtz v0, :cond_3

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v8, v2

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_2
    move v8, v1

    .line 74
    .line 75
    :goto_3
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->allEndFlag:Z

    .line 76
    .line 77
    if-nez v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 80
    .line 81
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 82
    .line 83
    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 87
    move-result v4

    .line 88
    .line 89
    cmpl-float v0, v0, v4

    .line 90
    .line 91
    if-ltz v0, :cond_5

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move v9, v2

    .line 94
    goto :goto_5

    .line 95
    :cond_6
    :goto_4
    move v9, v1

    .line 96
    .line 97
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 106
    .line 107
    if-nez v0, :cond_7

    .line 108
    move v10, v1

    .line 109
    goto :goto_6

    .line 110
    :cond_7
    move v10, v2

    .line 111
    :goto_6
    move-object v4, p1

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v3 .. v10}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;IZZZ)V

    .line 115
    return-void
.end method

.method public final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "event"

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1b

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isMoveEnable()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1b

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_1a

    .line 40
    const/4 v3, 0x2

    .line 41
    const/4 v4, 0x1

    .line 42
    .line 43
    if-eq v1, v3, :cond_5

    .line 44
    .line 45
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 48
    .line 49
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateCutterTime(FF)V

    .line 55
    .line 56
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    .line 57
    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 64
    move-result-wide v7

    .line 65
    .line 66
    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 68
    move-result-wide v9

    .line 69
    .line 70
    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isSeekToTimeAtLeft()Z

    .line 72
    move-result v11

    .line 73
    const/4 v12, 0x0

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v6 .. v12}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 80
    move-result v1

    .line 81
    const/4 v3, 0x3

    .line 82
    .line 83
    if-eq v1, v3, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 87
    move-result v1

    .line 88
    .line 89
    if-ne v1, v4, :cond_4

    .line 90
    :cond_3
    const/4 v1, 0x0

    .line 91
    .line 92
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 93
    .line 94
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 95
    .line 96
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 104
    .line 105
    iget-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 106
    .line 107
    if-eqz v5, :cond_e

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 111
    move-result v5

    .line 112
    .line 113
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 114
    .line 115
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 119
    move-result v7

    .line 120
    sub-float/2addr v6, v7

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 124
    move-result v5

    .line 125
    .line 126
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 130
    move-result v5

    .line 131
    .line 132
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 133
    .line 134
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 138
    move-result v5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 142
    move-result v6

    .line 143
    sub-float/2addr v5, v6

    .line 144
    .line 145
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 149
    move-result v5

    .line 150
    .line 151
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 152
    sub-float/2addr v5, v6

    .line 153
    .line 154
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 155
    .line 156
    iget v7, v6, Landroid/graphics/RectF;->left:F

    .line 157
    add-float/2addr v5, v7

    .line 158
    .line 159
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 160
    .line 161
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 162
    .line 163
    cmpg-float v7, v5, v7

    .line 164
    .line 165
    if-gtz v7, :cond_9

    .line 166
    .line 167
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 168
    .line 169
    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 173
    move-result v5

    .line 174
    .line 175
    aget v5, v7, v5

    .line 176
    .line 177
    if-eq v5, v4, :cond_8

    .line 178
    .line 179
    if-ne v5, v3, :cond_7

    .line 180
    .line 181
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 185
    move-result v5

    .line 186
    .line 187
    cmpl-float v3, v3, v5

    .line 188
    .line 189
    if-lez v3, :cond_6

    .line 190
    .line 191
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 192
    .line 193
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 197
    move-result v1

    .line 198
    add-float/2addr v5, v1

    .line 199
    .line 200
    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 201
    .line 202
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 203
    goto :goto_0

    .line 204
    .line 205
    :cond_6
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 209
    move-result v5

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 213
    move-result v7

    .line 214
    add-float/2addr v5, v7

    .line 215
    .line 216
    iget-object v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 217
    .line 218
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 219
    .line 220
    .line 221
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    .line 222
    move-result v5

    .line 223
    .line 224
    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 228
    move-result v5

    .line 229
    goto :goto_0

    .line 230
    .line 231
    :cond_7
    new-instance v1, Lw7/s;

    .line 232
    .line 233
    .line 234
    invoke-direct {v1}, Lw7/s;-><init>()V

    .line 235
    throw v1

    .line 236
    .line 237
    :cond_8
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 238
    goto :goto_0

    .line 239
    .line 240
    :cond_9
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 241
    .line 242
    cmpl-float v7, v5, v7

    .line 243
    .line 244
    if-ltz v7, :cond_d

    .line 245
    .line 246
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 247
    .line 248
    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 252
    move-result v5

    .line 253
    .line 254
    aget v5, v7, v5

    .line 255
    .line 256
    if-eq v5, v4, :cond_c

    .line 257
    .line 258
    if-ne v5, v3, :cond_b

    .line 259
    .line 260
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 264
    move-result v5

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 268
    move-result v7

    .line 269
    sub-float/2addr v5, v7

    .line 270
    .line 271
    cmpg-float v3, v3, v5

    .line 272
    .line 273
    if-gez v3, :cond_a

    .line 274
    .line 275
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 276
    .line 277
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 281
    move-result v1

    .line 282
    add-float/2addr v5, v1

    .line 283
    .line 284
    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 285
    .line 286
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 287
    goto :goto_0

    .line 288
    .line 289
    :cond_a
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 293
    move-result v5

    .line 294
    .line 295
    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 299
    move-result v3

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 303
    move-result v1

    .line 304
    .line 305
    sub-float v5, v3, v1

    .line 306
    goto :goto_0

    .line 307
    .line 308
    :cond_b
    new-instance v1, Lw7/s;

    .line 309
    .line 310
    .line 311
    invoke-direct {v1}, Lw7/s;-><init>()V

    .line 312
    throw v1

    .line 313
    .line 314
    :cond_c
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 315
    .line 316
    :cond_d
    :goto_0
    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_e
    iget-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 321
    .line 322
    if-eqz v5, :cond_17

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 326
    move-result v5

    .line 327
    .line 328
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 329
    .line 330
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 331
    .line 332
    .line 333
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 334
    move-result v5

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 338
    move-result v6

    .line 339
    add-float/2addr v5, v6

    .line 340
    .line 341
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 345
    move-result v5

    .line 346
    .line 347
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 348
    .line 349
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 353
    move-result v7

    .line 354
    add-float/2addr v6, v7

    .line 355
    .line 356
    .line 357
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 358
    move-result v5

    .line 359
    .line 360
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 364
    move-result v5

    .line 365
    .line 366
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 367
    sub-float/2addr v5, v6

    .line 368
    .line 369
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 370
    .line 371
    iget v7, v6, Landroid/graphics/RectF;->right:F

    .line 372
    add-float/2addr v5, v7

    .line 373
    .line 374
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 375
    .line 376
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 377
    .line 378
    cmpg-float v7, v5, v7

    .line 379
    .line 380
    if-gtz v7, :cond_12

    .line 381
    .line 382
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 383
    .line 384
    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 388
    move-result v5

    .line 389
    .line 390
    aget v5, v7, v5

    .line 391
    .line 392
    if-eq v5, v4, :cond_11

    .line 393
    .line 394
    if-ne v5, v3, :cond_10

    .line 395
    .line 396
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 400
    move-result v5

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 404
    move-result v7

    .line 405
    add-float/2addr v5, v7

    .line 406
    .line 407
    cmpl-float v3, v3, v5

    .line 408
    .line 409
    if-lez v3, :cond_f

    .line 410
    .line 411
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 412
    .line 413
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 417
    move-result v1

    .line 418
    sub-float/2addr v5, v1

    .line 419
    .line 420
    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 421
    .line 422
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 423
    goto :goto_1

    .line 424
    .line 425
    :cond_f
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 429
    move-result v5

    .line 430
    .line 431
    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 435
    move-result v3

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    .line 439
    move-result v1

    .line 440
    .line 441
    add-float v5, v3, v1

    .line 442
    goto :goto_1

    .line 443
    .line 444
    :cond_10
    new-instance v1, Lw7/s;

    .line 445
    .line 446
    .line 447
    invoke-direct {v1}, Lw7/s;-><init>()V

    .line 448
    throw v1

    .line 449
    .line 450
    :cond_11
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 451
    goto :goto_1

    .line 452
    .line 453
    :cond_12
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 454
    .line 455
    cmpl-float v7, v5, v7

    .line 456
    .line 457
    if-ltz v7, :cond_16

    .line 458
    .line 459
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 460
    .line 461
    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 462
    .line 463
    .line 464
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 465
    move-result v5

    .line 466
    .line 467
    aget v5, v7, v5

    .line 468
    .line 469
    if-eq v5, v4, :cond_15

    .line 470
    .line 471
    if-ne v5, v3, :cond_14

    .line 472
    .line 473
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 477
    move-result v5

    .line 478
    .line 479
    cmpg-float v3, v3, v5

    .line 480
    .line 481
    if-gez v3, :cond_13

    .line 482
    .line 483
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 484
    .line 485
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 489
    move-result v1

    .line 490
    sub-float/2addr v5, v1

    .line 491
    .line 492
    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 493
    .line 494
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 495
    goto :goto_1

    .line 496
    .line 497
    :cond_13
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 501
    move-result v5

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    .line 505
    move-result v7

    .line 506
    sub-float/2addr v5, v7

    .line 507
    .line 508
    iget-object v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 509
    .line 510
    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 511
    .line 512
    .line 513
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    .line 514
    move-result v5

    .line 515
    .line 516
    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 520
    move-result v5

    .line 521
    goto :goto_1

    .line 522
    .line 523
    :cond_14
    new-instance v1, Lw7/s;

    .line 524
    .line 525
    .line 526
    invoke-direct {v1}, Lw7/s;-><init>()V

    .line 527
    throw v1

    .line 528
    .line 529
    :cond_15
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 530
    .line 531
    :cond_16
    :goto_1
    iput v5, v6, Landroid/graphics/RectF;->right:F

    .line 532
    goto :goto_2

    .line 533
    .line 534
    :cond_17
    iget-boolean v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 535
    .line 536
    if-eqz v3, :cond_18

    .line 537
    .line 538
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 542
    move-result v3

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    .line 546
    move-result v5

    .line 547
    .line 548
    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    .line 552
    move-result v1

    .line 553
    sub-float/2addr v1, v3

    .line 554
    .line 555
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 559
    move-result v1

    .line 560
    .line 561
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 562
    sub-float/2addr v1, v5

    .line 563
    .line 564
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 565
    .line 566
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 567
    add-float/2addr v1, v6

    .line 568
    .line 569
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 570
    .line 571
    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 572
    .line 573
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 574
    .line 575
    cmpg-float v6, v6, v1

    .line 576
    .line 577
    if-gtz v6, :cond_18

    .line 578
    .line 579
    cmpg-float v6, v1, v7

    .line 580
    .line 581
    if-gtz v6, :cond_18

    .line 582
    .line 583
    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 584
    add-float/2addr v1, v3

    .line 585
    .line 586
    iput v1, v5, Landroid/graphics/RectF;->right:F

    .line 587
    .line 588
    .line 589
    :cond_18
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 590
    move-result v1

    .line 591
    .line 592
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 593
    .line 594
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 595
    .line 596
    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 597
    .line 598
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 599
    .line 600
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v3, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateCutterTime(FF)V

    .line 604
    .line 605
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    .line 606
    .line 607
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 611
    move-result-wide v6

    .line 612
    .line 613
    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 615
    move-result-wide v8

    .line 616
    .line 617
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 618
    .line 619
    xor-int/lit8 v10, v1, 0x1

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {v5 .. v10}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->updateTimeText(JJZ)V

    .line 623
    .line 624
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    .line 625
    .line 626
    if-eqz v11, :cond_19

    .line 627
    .line 628
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 632
    move-result-wide v12

    .line 633
    .line 634
    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 636
    move-result-wide v14

    .line 637
    .line 638
    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isSeekToTimeAtLeft()Z

    .line 640
    move-result v16

    .line 641
    .line 642
    const/16 v17, 0x1

    .line 643
    .line 644
    .line 645
    invoke-interface/range {v11 .. v17}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 646
    .line 647
    .line 648
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 649
    goto :goto_3

    .line 650
    .line 651
    .line 652
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 653
    move-result v1

    .line 654
    .line 655
    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 656
    :cond_1b
    :goto_3
    return-void
.end method

.method public final setBoundaryMode(Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-void
.end method

.method public final updateMediaSectionStartTime(I)V
    .locals 8

    .line 1
    int-to-long v0, p1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    .line 7
    move-result-wide v2

    .line 8
    sub-long/2addr v0, v2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->shift(J)V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 21
    move-result-wide v3

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    .line 25
    move-result-wide v5

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 28
    .line 29
    xor-int/lit8 v7, p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->updateTimeText(JJZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 36
    return-void
.end method

.method public final updatePointer(I)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr v1, v3

    .line 19
    .line 20
    :goto_0
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v3, v1, v3

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-lez v3, :cond_3

    .line 26
    int-to-long v5, p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    .line 30
    move-result-wide v7

    .line 31
    sub-long/2addr v5, v7

    .line 32
    long-to-float p1, v5

    .line 33
    long-to-float v0, v1

    .line 34
    div-float/2addr p1, v0

    .line 35
    .line 36
    .line 37
    const v0, 0x3f7d70a4    # 0.99f

    .line 38
    .line 39
    cmpl-float v0, p1, v0

    .line 40
    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    if-ltz v0, :cond_1

    .line 44
    move p1, v1

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    .line 47
    .line 48
    cmpg-float v2, v4, p1

    .line 49
    .line 50
    if-gtz v2, :cond_2

    .line 51
    .line 52
    cmpg-float v1, p1, v1

    .line 53
    .line 54
    if-gtz v1, :cond_2

    .line 55
    move v4, p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->setPointerPercent(F)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->setPointerPercent(F)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    return-void
.end method
