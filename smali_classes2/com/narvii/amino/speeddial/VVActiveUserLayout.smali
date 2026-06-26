.class public Lcom/narvii/amino/speeddial/VVActiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "VVActiveUserLayout.java"


# static fields
.field private static final DURATION_SPEAKING:I = 0xbb8

.field private static final LIMIT_COUNT:I = 0x4

.field private static final RATIO_ONE_USER:F = 0.48f

.field private static final RATIO_TWO_USER:F = 0.4f


# instance fields
.field private curRunningUid:Ljava/lang/String;

.field private oneUserSize:I

.field pendingSpeakingUids:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;

.field private speakingAnimator:Landroid/animation/ValueAnimator;

.field private twoUserSize:I

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->oneUserSize:I

    .line 48
    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->twoUserSize:I

    .line 53
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->pendingSpeakingUids:Ljava/util/Queue;

    .line 56
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 65
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    .line 66
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/narvii/amino/speeddial/VVActiveUserLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout$1;-><init>(Lcom/narvii/amino/speeddial/VVActiveUserLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/VVActiveUserLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startSpeakingAnimation()V

    return-void
.end method

.method private containeCurUser(Lcom/narvii/model/User;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 299
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 300
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090a75

    .line 301
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 302
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getMappedUserViewIndex(Lcom/narvii/model/User;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 286
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090a75

    .line 287
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 288
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getRunningIndex(Ljava/lang/String;)I
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 265
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private getUserById(Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 253
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method private startAnimation()V
    .locals 10

    .line 169
    new-instance v0, Landroid/support/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/support/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x64

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 171
    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    const-wide/16 v3, 0xc8

    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 173
    new-instance v3, Landroid/support/transition/TransitionSet;

    invoke-direct {v3}, Landroid/support/transition/TransitionSet;-><init>()V

    const/4 v4, 0x0

    .line 174
    invoke-virtual {v3, v4}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 176
    invoke-virtual {v3, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 179
    invoke-static {p0, v3}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 182
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    const v3, 0x7f0701cb

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    .line 185
    :cond_0
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 188
    :cond_1
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    iget v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v3, v1

    if-ne v0, v2, :cond_2

    const v6, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_2
    const v6, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float v3, v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_14

    .line 191
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 192
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 195
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v2, :cond_4

    .line 197
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 198
    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 200
    :cond_3
    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 202
    :goto_2
    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_10

    :cond_4
    if-ne v0, v5, :cond_8

    .line 204
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_5

    div-int/lit8 v8, v1, 0x4

    goto :goto_3

    :cond_5
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    :goto_3
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    .line 207
    :cond_6
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_7

    div-int/lit8 v8, v1, 0x4

    goto :goto_4

    :cond_7
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    :goto_4
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    :goto_5
    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_10

    :cond_8
    const/4 v8, 0x3

    if-ne v0, v8, :cond_f

    .line 211
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_b

    if-ne v6, v5, :cond_9

    .line 212
    div-int/lit8 v8, v1, 0x2

    :goto_6
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    goto :goto_7

    :cond_9
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_a

    div-int/lit8 v8, v1, 0x4

    goto :goto_6

    :cond_a
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    goto :goto_6

    :goto_7
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a

    :cond_b
    if-ne v6, v5, :cond_c

    .line 215
    div-int/lit8 v8, v1, 0x2

    :goto_8
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    goto :goto_9

    :cond_c
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_d

    div-int/lit8 v8, v1, 0x4

    goto :goto_8

    :cond_d
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    goto :goto_8

    :goto_9
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_a
    if-ge v6, v5, :cond_e

    mul-int/lit8 v8, v1, 0x3

    .line 218
    div-int/lit8 v8, v8, 0x4

    goto :goto_b

    :cond_e
    div-int/lit8 v8, v1, 0x4

    :goto_b
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_10

    .line 220
    :cond_f
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 221
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_10

    div-int/lit8 v8, v1, 0x4

    goto :goto_c

    :cond_10
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    :goto_c
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_e

    .line 223
    :cond_11
    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_12

    div-int/lit8 v8, v1, 0x4

    goto :goto_d

    :cond_12
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    :goto_d
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_e
    if-ge v6, v5, :cond_13

    mul-int/lit8 v8, v1, 0x3

    .line 225
    div-int/lit8 v8, v8, 0x4

    goto :goto_f

    :cond_13
    div-int/lit8 v8, v1, 0x4

    :goto_f
    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method private startSpeakingAnimation()V
    .locals 6

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 237
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090984

    .line 238
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/video/view/UserSpeakingView;

    const v5, 0x7f090a75

    .line 239
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    if-ne v2, v1, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 240
    :goto_1
    invoke-virtual {v4, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    const v4, 0x7f0900e4

    .line 241
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 242
    iget-object v4, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->getUserById(Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object v4

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v2, v1, :cond_2

    const v4, 0x7f06003c

    goto :goto_2

    :cond_2
    if-ne v2, v1, :cond_3

    const v4, 0x7f06003e

    goto :goto_2

    :cond_3
    const v4, 0x7f06003d

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v3, Lcom/narvii/widget/NVImageView;->strokeColor:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0900e4

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f06003c

    goto :goto_0

    :cond_1
    const v1, 0x7f06003d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 278
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addUser()V
    .locals 3

    .line 311
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v1, "https://s1.narvii.com/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg"

    .line 313
    iput-object v1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p0, v1}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 338
    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 339
    iput p2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    return-void
.end method

.method public removeUser()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v1, v0, :cond_1

    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    return-void
.end method

.method public updateUserList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 99
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 102
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startSpeakingAnimation()V

    :cond_4
    const/4 v2, 0x0

    .line 112
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 114
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_6
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 122
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_7

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 126
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const v3, 0x7f090a75

    if-ge v0, v2, :cond_9

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 129
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 130
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 135
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 139
    :goto_5
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 140
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 141
    invoke-direct {p0, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->getMappedUserViewIndex(Lcom/narvii/model/User;)I

    move-result v2

    .line 142
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_e

    if-eq v2, p1, :cond_d

    .line 145
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    const/4 v2, 0x4

    :goto_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_c

    goto :goto_7

    :cond_c
    move v6, p1

    :goto_7
    invoke-virtual {p0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 149
    :cond_d
    invoke-direct {p0, v5, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V

    goto :goto_a

    .line 151
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0b046f

    invoke-virtual {v2, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    invoke-direct {p0, v2, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/4 v0, 0x4

    :goto_8
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090984

    .line 155
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 156
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_10

    goto :goto_9

    :cond_10
    move v6, p1

    :goto_9
    invoke-virtual {p0, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 161
    :cond_11
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startAnimation()V

    .line 162
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_12

    .line 163
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_12
    return-void
.end method
