.class public final Lcom/narvii/widgets/StoryProgressBar;
.super Landroid/view/View;
.source "StoryProgressBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryProgressBar.kt\ncom/narvii/widgets/StoryProgressBar\n*L\n1#1,369:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeAlpha:F

.field private activeIndex:I

.field private activeScale:F

.field private activeTransferX:F

.field private indicatorPaint:Landroid/graphics/Paint;

.field private interActCircle:F

.field private interActSceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isPaused:Z

.field private lineHeight:F

.field private milestoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/story/StorySceneMilestone;",
            ">;"
        }
    .end annotation
.end field

.field private milestoneSize:I

.field private normalCircle:F

.field private primaryColor:I

.field private primaryPaint:Landroid/graphics/Paint;

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private secondaryColor:I

.field private startScale:F

.field private storyId:Ljava/lang/String;

.field private storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

.field private strokeWidth:F

.field private tAnimator:Landroid/animation/ValueAnimator;

.field private transferAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/narvii/widgets/StoryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    const v1, -0x777778

    .line 30
    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    .line 32
    iput v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    .line 34
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 37
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const v0, 0x3f99999a    # 1.2f

    .line 42
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->startScale:F

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 61
    sget-object v0, Lcom/narvii/lib/R$styleable;->StoryProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide v0, 0xffffffffL

    if-eqz p1, :cond_1

    .line 62
    sget p2, Lcom/narvii/lib/R$styleable;->StoryProgressBar_primaryColor:I

    long-to-int v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_1

    :cond_1
    long-to-int p2, v0

    .line 63
    :goto_1
    iput p2, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    const-wide v0, 0x80ffffffL

    if-eqz p1, :cond_2

    .line 64
    sget p2, Lcom/narvii/lib/R$styleable;->StoryProgressBar_secondaryColor:I

    long-to-int v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_2

    :cond_2
    long-to-int p2, v0

    .line 65
    :goto_2
    iput p2, p0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static final synthetic access$getActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    return p0
.end method

.method public static final synthetic access$getActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    return p0
.end method

.method public static final synthetic access$getActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    return p0
.end method

.method public static final synthetic access$getScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getStartScale$p(Lcom/narvii/widgets/StoryProgressBar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/narvii/widgets/StoryProgressBar;->startScale:F

    return p0
.end method

.method public static final synthetic access$isPaused$p(Lcom/narvii/widgets/StoryProgressBar;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    return p0
.end method

.method public static final synthetic access$setActiveAlpha$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    return-void
.end method

.method public static final synthetic access$setActiveScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    return-void
.end method

.method public static final synthetic access$setActiveTransferX$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    return-void
.end method

.method public static final synthetic access$setPaused$p(Lcom/narvii/widgets/StoryProgressBar;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    return-void
.end method

.method public static final synthetic access$setScaleAnimator$p(Lcom/narvii/widgets/StoryProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setStartScale$p(Lcom/narvii/widgets/StoryProgressBar;F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->startScale:F

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getIndicatorPaint()Landroid/graphics/Paint;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getInteractionPlayeRecord(I)Lcom/narvii/scene/ScenePlayRecord;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_3

    if-eqz v0, :cond_1

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_2

    goto :goto_1

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StorySceneMilestone;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/narvii/model/story/StorySceneMilestone;->milestoneId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 365
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/narvii/widgets/IStoryPollQuizPlayListener;->getPollQuizPlayRecord(Ljava/lang/String;)Lcom/narvii/scene/ScenePlayRecord;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getStoryQuizPollPlayListener()Lcom/narvii/widgets/IStoryPollQuizPlayListener;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 209
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 215
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    const/4 v8, 0x1

    if-gt v1, v8, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v9, v2, v3

    int-to-float v1, v1

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v1, v1, v10

    const/16 v2, 0x9

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 223
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    rsub-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    mul-float v1, v1, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float v13, v1, v2

    .line 224
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const/4 v14, 0x0

    int-to-float v2, v14

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 227
    :goto_0
    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2e

    int-to-float v1, v9

    div-float v4, v1, v12

    .line 229
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 230
    :goto_2
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    add-int/lit8 v3, v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    goto :goto_3

    :cond_3
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    .line 231
    :goto_3
    iget-object v14, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/narvii/widgets/StoryProgressBar;->interActCircle:F

    goto :goto_4

    :cond_4
    iget v8, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    :goto_4
    int-to-float v14, v5

    mul-float v14, v14, v11

    add-float v17, v13, v14

    div-float v18, v1, v12

    add-float v1, v17, v18

    .line 235
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v13

    sub-float/2addr v1, v14

    sub-float v1, v1, v18

    :cond_5
    move/from16 v19, v1

    int-to-float v1, v3

    mul-float v1, v1, v11

    add-float v20, v13, v1

    div-float v21, v2, v12

    sub-float v20, v20, v21

    .line 239
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    sub-float/2addr v2, v1

    add-float v2, v2, v21

    move/from16 v22, v2

    goto :goto_5

    :cond_6
    move/from16 v22, v20

    .line 242
    :goto_5
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ge v5, v2, :cond_7

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    goto :goto_6

    :cond_7
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    :goto_6
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v5, v1, :cond_a

    .line 244
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v16

    if-eqz v2, :cond_9

    if-nez v15, :cond_8

    goto :goto_7

    :cond_8
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    goto :goto_8

    :cond_9
    :goto_7
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    :goto_8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    :cond_a
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ge v5, v2, :cond_b

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    const/high16 v23, 0x3fc00000    # 1.5f

    mul-float v2, v2, v23

    goto :goto_9

    :cond_b
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->lineHeight:F

    :goto_9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v5, v1, :cond_c

    if-eqz v7, :cond_c

    .line 248
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v23, v2

    move/from16 v2, v19

    move/from16 v24, v3

    move v3, v4

    move/from16 v25, v4

    move/from16 v4, v22

    move v12, v5

    move/from16 v5, v25

    move/from16 v26, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_c
    move/from16 v24, v3

    move/from16 v25, v4

    move v12, v5

    move/from16 v26, v6

    :goto_a
    if-eqz v15, :cond_d

    .line 252
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ne v12, v1, :cond_e

    if-lez v1, :cond_e

    goto :goto_b

    .line 254
    :cond_d
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ne v12, v1, :cond_e

    :goto_b
    const/4 v1, 0x1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    const/4 v6, 0x0

    const/16 v5, 0xff

    if-eqz v1, :cond_1b

    .line 257
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v15, :cond_f

    add-float v19, v19, v18

    add-float v19, v19, v11

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v1, v8, v1

    sub-float v19, v19, v1

    :cond_f
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_f

    :cond_10
    if-eqz v15, :cond_12

    if-gez v10, :cond_11

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_d

    :cond_11
    int-to-float v1, v10

    mul-float v1, v1, v11

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v8, v2

    add-float/2addr v1, v3

    :goto_d
    add-float/2addr v1, v13

    goto :goto_e

    :cond_12
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v1, v17, v18

    :goto_e
    move/from16 v19, v1

    .line 270
    :goto_f
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v15, :cond_13

    sub-float v1, v11, v18

    div-float v3, v8, v2

    sub-float/2addr v1, v3

    .line 272
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v1, v1, v3

    sub-float v1, v19, v1

    goto :goto_10

    :cond_13
    sub-float v1, v19, v11

    add-float v1, v1, v18

    add-float v1, v1, v21

    sub-float v3, v11, v18

    div-float v4, v8, v2

    sub-float/2addr v3, v4

    .line 274
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    goto :goto_10

    :cond_14
    if-eqz v15, :cond_15

    sub-float v1, v11, v18

    sub-float v1, v1, v21

    .line 279
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v1, v1, v2

    add-float v1, v19, v1

    goto :goto_10

    :cond_15
    sub-float v1, v11, v18

    sub-float v1, v1, v21

    .line 281
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v1, v1, v2

    add-float v1, v20, v1

    :goto_10
    move v4, v1

    .line 284
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v7, :cond_16

    .line 285
    iget-object v10, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v25

    move/from16 v23, v9

    const/16 v9, 0xff

    move/from16 v5, v25

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_16
    move/from16 v23, v9

    const/16 v9, 0xff

    .line 287
    :goto_11
    iget v1, v0, Lcom/narvii/widgets/StoryProgressBar;->normalCircle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 288
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    int-to-float v4, v9

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v15, :cond_17

    sub-float v2, v11, v18

    .line 292
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    goto :goto_12

    :cond_17
    sub-float v19, v19, v11

    add-float v19, v19, v18

    add-float v19, v19, v21

    sub-float v2, v11, v21

    .line 294
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    :goto_12
    mul-float v2, v2, v3

    sub-float v19, v19, v2

    goto :goto_13

    :cond_18
    if-eqz v15, :cond_19

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v8, v2

    sub-float v2, v11, v8

    .line 299
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v2, v2, v3

    add-float v19, v19, v2

    goto :goto_13

    :cond_19
    sub-float v2, v11, v21

    .line 301
    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    mul-float v2, v2, v3

    add-float v19, v20, v2

    :goto_13
    move/from16 v2, v19

    if-eqz v7, :cond_1a

    .line 304
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    move/from16 v4, v25

    invoke-virtual {v7, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1a
    move/from16 v4, v25

    goto :goto_14

    :cond_1b
    move/from16 v23, v9

    move/from16 v4, v25

    const/16 v9, 0xff

    .line 308
    :goto_14
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v13

    sub-float v17, v1, v14

    :cond_1c
    move/from16 v1, v17

    .line 315
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ne v12, v2, :cond_1d

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_1d

    .line 316
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    mul-float v2, v2, v18

    .line 318
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    int-to-float v6, v9

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v7, :cond_1d

    .line 319
    iget-object v3, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    :cond_1d
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v2, v3

    sub-float v5, v18, v5

    .line 326
    iget-object v6, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-le v12, v6, :cond_1e

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_15

    :cond_1e
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_15
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-gt v12, v6, :cond_1f

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1f

    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryColor:I

    goto :goto_16

    :cond_1f
    iget v6, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    :goto_16
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ne v12, v2, :cond_20

    if-eqz v15, :cond_20

    iget v2, v0, Lcom/narvii/widgets/StoryProgressBar;->activeTransferX:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v6

    if-eqz v2, :cond_21

    .line 330
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/narvii/widgets/StoryProgressBar;->secondaryColor:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_17

    :cond_20
    const/high16 v6, 0x3f800000    # 1.0f

    :cond_21
    :goto_17
    if-eqz v7, :cond_22

    .line 333
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    :cond_22
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v7, :cond_23

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 337
    :cond_23
    invoke-virtual {v0, v12}, Lcom/narvii/widgets/StoryProgressBar;->getInteractionPlayeRecord(I)Lcom/narvii/scene/ScenePlayRecord;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 338
    iget v8, v2, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_25

    const/4 v8, 0x1

    goto :goto_18

    :cond_24
    const/4 v9, 0x1

    :cond_25
    const/4 v8, 0x0

    :goto_18
    if-eqz v2, :cond_26

    const/4 v10, 0x1

    goto :goto_19

    :cond_26
    const/4 v10, 0x0

    :goto_19
    if-eqz v2, :cond_27

    .line 340
    iget-boolean v2, v2, Lcom/narvii/scene/ScenePlayRecord;->isAnswerRight:Z

    if-ne v2, v9, :cond_27

    const/4 v2, 0x1

    goto :goto_1a

    :cond_27
    const/4 v2, 0x0

    .line 341
    :goto_1a
    iget-object v12, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v10, :cond_2a

    .line 343
    iget-object v10, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_29

    if-nez v8, :cond_28

    goto :goto_1b

    :cond_28
    move/from16 v25, v4

    const-wide v3, 0xffff4444L

    long-to-int v2, v3

    goto :goto_1c

    :cond_29
    :goto_1b
    move/from16 v25, v4

    const-wide v2, 0xff04e444L

    long-to-int v2, v2

    :goto_1c
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1d

    :cond_2a
    move/from16 v25, v4

    .line 345
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    const-wide v3, 0xff32c1ebL

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1d
    if-eqz v7, :cond_2b

    const v2, 0x3f2147ae    # 0.63f

    mul-float v5, v5, v2

    .line 347
    iget-object v2, v0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    move/from16 v3, v25

    invoke-virtual {v7, v1, v3, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2b
    if-eqz v7, :cond_2d

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1e

    :cond_2c
    const/4 v9, 0x1

    .line 350
    :cond_2d
    :goto_1e
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    iget-object v1, v0, Lcom/narvii/widgets/StoryProgressBar;->primaryPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v9, v23

    move/from16 v5, v24

    move/from16 v6, v26

    const/4 v8, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_2e
    return-void
.end method

.method public final pauseAnimation()V
    .locals 2

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    .line 187
    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public final resetCurSceneIndex()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 84
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final resumeAnimation()V
    .locals 2

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/narvii/widgets/StoryProgressBar;->isPaused:Z

    .line 199
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCurSceneIndex(I)V
    .locals 4

    .line 109
    iget v0, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    if-gt p1, v1, :cond_a

    if-gez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-le p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 116
    :goto_0
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeIndex:I

    .line 117
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 119
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v2, "sAnimator"

    .line 120
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v2, 0x4b0

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance v2, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;

    invoke-direct {v2, p0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$1;-><init>(Lcom/narvii/widgets/StoryProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    new-instance v2, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;

    invoke-direct {v2, p0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$2;-><init>(Lcom/narvii/widgets/StoryProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    iput-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 149
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    .line 150
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    :cond_5
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    :cond_6
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    new-instance v1, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;

    invoke-direct {v1, p0, v0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$3;-><init>(Lcom/narvii/widgets/StoryProgressBar;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    new-instance v1, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;

    invoke-direct {v1, p0, v0}, Lcom/narvii/widgets/StoryProgressBar$setCurSceneIndex$4;-><init>(Lcom/narvii/widgets/StoryProgressBar;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    :cond_8
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 181
    :cond_9
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->tAnimator:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->transferAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setIndicatorPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->indicatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final setSceneSize(I)V
    .locals 0

    return-void
.end method

.method public final setStory(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/story/StorySceneMilestone;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    sget-object v2, Lcom/narvii/widgets/StoryProgressBar$setStory$1;->INSTANCE:Lcom/narvii/widgets/StoryProgressBar$setStory$1;

    invoke-virtual {v0, p2, v1, v2}, Lcom/narvii/util/KUtils$Companion;->isListSame(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->storyId:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneList:Ljava/util/List;

    .line 95
    iget-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 96
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/narvii/widgets/StoryProgressBar;->milestoneSize:I

    if-eqz p2, :cond_3

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_3

    .line 99
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StorySceneMilestone;

    invoke-interface {v1}, Lcom/narvii/model/story/StorySceneMilestone;->containsPollOrQuiz()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/narvii/widgets/StoryProgressBar;->interActSceneList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 104
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeScale:F

    .line 105
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->activeAlpha:F

    return-void
.end method

.method public final setStoryQuizPollPlayListener(Lcom/narvii/widgets/IStoryPollQuizPlayListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/widgets/StoryProgressBar;->storyQuizPollPlayListener:Lcom/narvii/widgets/IStoryPollQuizPlayListener;

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/narvii/widgets/StoryProgressBar;->strokeWidth:F

    return-void
.end method

.method public final updatePlayedPollQuiz()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
