.class public Lcom/narvii/post/entry/PostEntrySnakeLayout;
.super Landroid/widget/FrameLayout;
.source "PostEntrySnakeLayout.java"


# instance fields
.field final animators:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final backgrounds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final btns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/post/entry/ComposeEntryItem;",
            ">;"
        }
    .end annotation
.end field

.field fraction:I

.field final isRtl:Z

.field layout:Z

.field pendingGo:Ljava/lang/Boolean;

.field final tmpp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 38
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 40
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 41
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    const/4 p1, 0x4

    .line 44
    iput p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 48
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->isRtl:Z

    return-void
.end method

.method private calcPosition(ILandroid/graphics/PointF;)V
    .locals 5

    .line 117
    iget v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    div-int v1, p1, v0

    .line 118
    rem-int/2addr p1, v0

    .line 119
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 121
    iget v3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    div-float/2addr v2, v3

    mul-int/lit8 p1, p1, 0x2

    const/4 v3, 0x1

    add-int/2addr p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 122
    iget-boolean p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->isRtl:Z

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 123
    :goto_0
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    mul-int p1, p1, v2

    if-ne p1, v3, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 129
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method


# virtual methods
.method public go(Z)I
    .locals 20

    move-object/from16 v6, p0

    .line 135
    :goto_0
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 139
    :cond_0
    iget-boolean v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    if-nez v0, :cond_1

    .line 141
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->pendingGo:Ljava/lang/Boolean;

    .line 142
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 147
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 149
    :cond_2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_1
    move-object v7, v0

    .line 152
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v0}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    .line 154
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 155
    new-array v9, v0, [Landroid/graphics/Path;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 157
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 158
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    aput-object v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v10, 0x2

    if-ge v1, v0, :cond_5

    .line 163
    iget-object v2, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez p1, :cond_4

    .line 165
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    invoke-direct {v6, v1, v3}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    .line 167
    :cond_4
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 168
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v10

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x1

    const/4 v1, 0x1

    :goto_4
    if-ge v1, v0, :cond_7

    .line 172
    iget-object v2, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_6

    .line 174
    aget-object v3, v9, v2

    .line 175
    iget-object v4, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    mul-int/lit8 v12, v0, 0x32

    new-array v13, v10, [F

    new-array v14, v10, [F

    sub-int/2addr v0, v11

    const/4 v15, 0x0

    move v5, v0

    const/4 v0, 0x0

    :goto_6
    if-lez v5, :cond_b

    .line 184
    iget-object v1, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/view/View;

    .line 185
    aget-object v1, v9, v5

    .line 186
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 187
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    cmpl-float v3, v0, v15

    if-nez v3, :cond_8

    move/from16 v17, v1

    goto :goto_7

    :cond_8
    move/from16 v17, v0

    :goto_7
    int-to-float v0, v12

    mul-float v0, v0, v1

    div-float v0, v0, v17

    float-to-int v0, v0

    new-array v3, v10, [F

    if-eqz p1, :cond_9

    aput v15, v3, v8

    aput v1, v3, v11

    .line 192
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_8

    :cond_9
    aput v1, v3, v8

    aput v15, v3, v11

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_8
    move-object v4, v1

    move-object/from16 v18, v9

    int-to-long v8, v0

    .line 193
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    sub-int v0, v12, v0

    int-to-long v0, v0

    .line 195
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 197
    :cond_a
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    new-instance v8, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v9, v4

    move-object v4, v14

    move/from16 v19, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;-><init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Landroid/graphics/PathMeasure;[F[FLandroid/view/View;)V

    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 207
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v19, -0x1

    move/from16 v0, v17

    move-object/from16 v9, v18

    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    return v12
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 55
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090103

    if-ne v3, v4, :cond_0

    .line 57
    iget-object v3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 109
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    .line 111
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->pendingGo:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    :cond_0
    return-void
.end method

.method public setEntryKeys(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/post/entry/EntryItemClickListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/post/entry/EntryItemClickListener;",
            ")V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/entry/ComposeEntryItem;

    .line 68
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    :goto_1
    iget v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    div-int/2addr v3, v4

    .line 73
    iget-object v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    .line 74
    iget-object v6, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-ge v5, v3, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    const/4 v7, 0x4

    .line 75
    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_8

    .line 78
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_7

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "account"

    .line 83
    invoke-interface {p1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    const-string v5, "draft"

    .line 84
    invoke-interface {p1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/post/DraftManager;

    .line 85
    invoke-virtual {v5}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 86
    :goto_4
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v4, v6}, Lcom/narvii/modulization/entry/EntryManager;->canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object v7

    .line 89
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    const v8, 0x7f0b0587

    invoke-virtual {v3, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    :goto_6
    check-cast v8, Lcom/narvii/post/entry/ComposeEntryItem;

    .line 90
    invoke-virtual {v8, p1, v7, v6, v5}, Lcom/narvii/post/entry/ComposeEntryItem;->setEntryItem(Lcom/narvii/app/NVContext;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;Ljava/lang/String;I)V

    .line 91
    new-instance v9, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;

    invoke-direct {v9, p0, p3, v6, v7}, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;-><init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Lcom/narvii/post/entry/EntryItemClickListener;Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v6, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 104
    :cond_7
    iput-boolean v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    :cond_8
    :goto_7
    return-void
.end method

.method public setFraction(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
