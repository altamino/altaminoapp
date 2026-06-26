.class public final Lcom/narvii/video/widget/MediaRetrieveController2;
.super Landroid/view/View;
.source "MediaRetrieveController2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;,
        Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;,
        Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;,
        Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;,
        Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;,
        Lcom/narvii/video/widget/MediaRetrieveController2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaRetrieveController2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaRetrieveController2.kt\ncom/narvii/video/widget/MediaRetrieveController2\n*L\n1#1,497:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/MediaRetrieveController2$Companion;

.field private static final FORCE_MAX_LENGTH_RATE:F = 10.0f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private allEndFlag:Z

.field private final baseRect:Landroid/graphics/Rect;

.field private boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

.field private controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

.field private currHandlerLeftEnd:F

.field private currHandlerRightEnd:F

.field private final cutRect:Landroid/graphics/RectF;

.field private cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

.field private cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

.field private cutterRealMaxLengthMs:J

.field private cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

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

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2;->Companion:Lcom/narvii/video/widget/MediaRetrieveController2$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 35
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 36
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 43
    sget-object p1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 61
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 35
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 36
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-direct {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 43
    sget-object p1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 61
    new-instance p1, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    return-void
.end method

.method private final getCutterRealEndTime()J
    .locals 4

    .line 294
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaRetrieveController2;JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJILjava/lang/Object;)V
    .locals 17

    and-int/lit8 v0, p14, 0x8

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p6

    :goto_0
    and-int/lit8 v0, p14, 0x10

    if-eqz v0, :cond_1

    move-wide v11, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p8

    :goto_1
    and-int/lit8 v0, p14, 0x20

    if-eqz v0, :cond_2

    move-wide v13, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v13, p10

    :goto_2
    and-int/lit8 v0, p14, 0x40

    if-eqz v0, :cond_3

    move-wide v15, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v15, p12

    :goto_3
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    .line 95
    invoke-virtual/range {v3 .. v16}, Lcom/narvii/video/widget/MediaRetrieveController2;->initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V

    return-void
.end method

.method private final isMoveEnable()Z
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    sget-object v1, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isSeekToTimeAtLeft()Z
    .locals 3

    .line 280
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 281
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCutterEndPosition()J
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCutterStartPosition()J
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V
    .locals 14

    move-object v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    .line 96
    iget-object v4, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    long-to-float v5, v1

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v5, v5, v6

    sub-long v7, p8, p6

    long-to-float v7, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_1

    .line 98
    iput-boolean v8, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    .line 99
    iput-wide v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    cmp-long v5, p6, v10

    if-lez v5, :cond_0

    move-wide/from16 v12, p6

    goto :goto_0

    :cond_0
    move-wide v12, v10

    .line 100
    :goto_0
    invoke-virtual {v4, v12, v13}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerStartMs(J)V

    sub-long v1, p8, v1

    long-to-float v1, v1

    mul-float v1, v1, v6

    .line 102
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    move-result-wide v12

    long-to-float v2, v12

    sub-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerEndMs(J)V

    .line 103
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    move-result-wide v12

    sub-long/2addr v1, v12

    long-to-float v1, v1

    div-float/2addr v1, v6

    float-to-long v1, v1

    .line 104
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMinLengthMs(J)V

    .line 105
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMaxLengthMs(J)V

    goto :goto_3

    .line 107
    :cond_1
    iput-boolean v9, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    cmp-long v5, p6, v10

    if-lez v5, :cond_2

    move-wide/from16 v5, p6

    goto :goto_1

    :cond_2
    move-wide v5, v10

    .line 108
    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerStartMs(J)V

    cmp-long v5, p8, v10

    if-lez v5, :cond_3

    move-wide/from16 v5, p8

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    move-result-wide v5

    add-long/2addr v5, v1

    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setControllerEndMs(J)V

    move-wide v5, p1

    .line 110
    invoke-virtual {v4, v5, v6}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMinLengthMs(J)V

    .line 111
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterMaxLengthMs(J)V

    :goto_3
    cmp-long v1, p10, v10

    if-lez v1, :cond_4

    move-wide/from16 v1, p10

    goto :goto_4

    .line 113
    :cond_4
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    move-result-wide v1

    :goto_4
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterStartMs(J)V

    .line 114
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    move-result-wide v5

    add-long/2addr v1, v5

    cmp-long v5, p12, v1

    if-ltz v5, :cond_6

    .line 115
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    move-result-wide v5

    add-long/2addr v1, v5

    cmp-long v5, p12, v1

    if-gtz v5, :cond_6

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    move-result-wide v1

    cmp-long v5, p12, v1

    if-lez v5, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v1, p12

    goto :goto_6

    .line 116
    :cond_6
    :goto_5
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerEndMs()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    move-result-wide v10

    add-long/2addr v5, v10

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    :goto_6
    invoke-virtual {v4, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->setCutterEndMs(J)V

    .line 121
    iput-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    if-eqz v3, :cond_7

    .line 122
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v4

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    xor-int/2addr v6, v8

    const/4 v7, 0x0

    move-object/from16 p1, p5

    move-wide/from16 p2, v1

    move-wide/from16 p4, v4

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-interface/range {p1 .. p7}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 125
    :cond_7
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iput-boolean v8, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final isTouchInSlideHandler(F)Z
    .locals 16

    move-object/from16 v0, p0

    .line 157
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v3, v2

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v6

    float-to-double v6, v2

    int-to-double v10, v5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 158
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    .line 159
    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v10, v1

    int-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v14

    float-to-double v1, v1

    int-to-double v12, v5

    .line 160
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v12

    move/from16 v5, p1

    float-to-double v8, v5

    const/4 v5, 0x1

    const/4 v12, 0x0

    cmpl-double v13, v8, v3

    if-ltz v13, :cond_0

    cmpg-double v3, v8, v6

    if-gtz v3, :cond_0

    .line 163
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 164
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 165
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    goto :goto_0

    :cond_0
    cmpl-double v3, v8, v6

    if-ltz v3, :cond_1

    cmpg-double v3, v8, v10

    if-gtz v3, :cond_1

    .line 168
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 169
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 170
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    goto :goto_0

    :cond_1
    cmpl-double v3, v8, v10

    if-ltz v3, :cond_2

    cmpg-double v3, v8, v1

    if-gtz v3, :cond_2

    .line 173
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 174
    iput-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 175
    iput-boolean v12, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 178
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_1
    return v5
.end method

.method public final layoutRect(IIII)V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 78
    iget v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    add-int v2, p1, v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateScale(II)V

    .line 79
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    move-result v2

    int-to-float p2, p2

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    move-result v3

    int-to-float p4, p4

    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    move-result v2

    int-to-float p2, p2

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getPositionForTime(J)F

    move-result v3

    int-to-float p4, p4

    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMinLengthMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getLengthInController(J)F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setCutterMinWidth(F)V

    .line 85
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterMaxLengthMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getLengthInController(J)F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setCutterMaxWidth(F)V

    .line 86
    iget-object p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    iget p4, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    add-int/2addr p1, p4

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setControllerLeftEnd(F)V

    .line 87
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->setControllerRightEnd(F)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v0

    const/4 v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v1, v0

    if-gez v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isMoveEnable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->allEndFlag:Z

    .line 68
    iget-object v4, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    iget-object v6, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->baseRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->handlerWidth:I

    .line 69
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->allEndFlag:Z

    if-nez v0, :cond_4

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 70
    :goto_3
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->allEndFlag:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x1

    .line 71
    :goto_5
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-nez v0, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    move-object v5, p1

    .line 68
    invoke-virtual/range {v4 .. v11}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;IZZZ)V

    return-void
.end method

.method public final onSlideHandlerMove(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-eqz v1, :cond_1b

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isMoveEnable()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->flagShowCutter:Z

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 185
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5

    .line 262
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v5, v3}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateCutterTime(FF)V

    .line 263
    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    if-eqz v6, :cond_2

    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v9

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isSeekToTimeAtLeft()Z

    move-result v11

    const/4 v12, 0x0

    .line 263
    invoke-interface/range {v6 .. v12}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 265
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 266
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    .line 267
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    .line 268
    iput-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    .line 270
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 189
    :cond_5
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterPosInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;

    .line 190
    iget-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isLeftHandlerActive:Z

    if-eqz v5, :cond_e

    .line 191
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 192
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 195
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_9

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_8

    if-ne v5, v3, :cond_7

    .line 197
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    .line 198
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v1

    add-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 199
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    goto :goto_0

    .line 201
    :cond_6
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 202
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    goto :goto_0

    .line 197
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 196
    :cond_8
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    goto :goto_0

    .line 205
    :cond_9
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_d

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_c

    if-ne v5, v3, :cond_b

    .line 207
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v7

    sub-float/2addr v5, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_a

    .line 208
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v1

    add-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 209
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    goto :goto_0

    .line 211
    :cond_a
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 212
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v3

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v1

    sub-float v5, v3, v1

    goto :goto_0

    .line 207
    :cond_b
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 206
    :cond_c
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 194
    :cond_d
    :goto_0
    iput v5, v6, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 217
    :cond_e
    iget-boolean v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isRightHandlerActive:Z

    if-eqz v5, :cond_17

    .line 218
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 219
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v7

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 222
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_12

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_11

    if-ne v5, v3, :cond_10

    .line 224
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v7

    add-float/2addr v5, v7

    cmpl-float v3, v3, v5

    if-lez v3, :cond_f

    .line 225
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v1

    sub-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 226
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    goto :goto_1

    .line 228
    :cond_f
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 229
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v3

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMinWidth()F

    move-result v1

    add-float v5, v3, v1

    goto :goto_1

    .line 224
    :cond_10
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 223
    :cond_11
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    goto :goto_1

    .line 232
    :cond_12
    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_16

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    sget-object v7, Lcom/narvii/video/widget/MediaRetrieveController2$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_15

    if-ne v5, v3, :cond_14

    .line 234
    iget v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_13

    .line 235
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v1

    sub-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 236
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    goto :goto_1

    .line 238
    :cond_13
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getCutterMaxWidth()F

    move-result v7

    sub-float/2addr v5, v7

    iget-object v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 239
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v5

    goto :goto_1

    .line 234
    :cond_14
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 233
    :cond_15
    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 221
    :cond_16
    :goto_1
    iput v5, v6, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 244
    :cond_17
    iget-boolean v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->isCenterPressed:Z

    if-eqz v3, :cond_18

    .line 245
    iget-object v3, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 246
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerLeftEnd()F

    move-result v5

    iput v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    .line 247
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->getControllerRightEnd()F

    move-result v1

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    sub-float/2addr v1, v5

    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v6

    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    .line 249
    iget v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerLeftEnd:F

    iget v6, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->currHandlerRightEnd:F

    iget v7, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->newTargetX:F

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_18

    cmpg-float v1, v7, v6

    if-gtz v1, :cond_18

    .line 250
    iput v7, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v3

    .line 251
    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 254
    :cond_18
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    .line 255
    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    iget-object v2, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v3, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->updateCutterTime(FF)V

    .line 256
    iget-object v5, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v6

    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v8

    iget-boolean v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    xor-int/lit8 v10, v1, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->updateTimeText(JJZ)V

    .line 257
    iget-object v11, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->controllerMovedCallback:Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;

    if-eqz v11, :cond_19

    iget-object v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v12

    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v14

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->isSeekToTimeAtLeft()Z

    move-result v16

    const/16 v17, 0x1

    .line 257
    invoke-interface/range {v11 .. v17}, Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;->onControllerMoved(JJZZ)V

    .line 259
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 187
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/narvii/video/widget/MediaRetrieveController2;->lastDownX:F

    :cond_1b
    :goto_3
    return-void
.end method

.method public final setBoundaryMode(Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->boundaryMode:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-void
.end method

.method public final updateMediaSectionStartTime(I)V
    .locals 8

    int-to-long v0, p1

    .line 146
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getControllerStartMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 147
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->shift(J)V

    .line 148
    iget-object v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterRealEndTime()J

    move-result-wide v5

    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    xor-int/lit8 v7, p1, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->updateTimeText(JJZ)V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updatePointer(I)V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterTimeInfo:Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;

    .line 133
    iget-boolean v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->useFakeEndPos:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutterRealMaxLengthMs:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterEndMs()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_3

    int-to-long v3, p1

    .line 135
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getCutterStartMs()J

    move-result-wide v6

    sub-long/2addr v3, v6

    long-to-float p1, v3

    long-to-float v0, v1

    div-float/2addr p1, v0

    const v0, 0x3f7d70a4    # 0.99f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    cmpl-float v2, p1, v5

    if-ltz v2, :cond_2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->setPointerPercent(F)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2;->cutter:Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;

    invoke-virtual {p1, v5}, Lcom/narvii/video/widget/MediaRetrieveController2$InnerCutter;->setPointerPercent(F)V

    .line 142
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
