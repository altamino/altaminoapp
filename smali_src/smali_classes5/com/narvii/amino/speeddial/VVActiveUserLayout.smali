.class public Lcom/narvii/amino/speeddial/VVActiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->oneUserSize:I

    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->twoUserSize:I

    .line 4
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->pendingSpeakingUids:Ljava/util/Queue;

    .line 5
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    const/4 p2, 0x1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xbb8

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lcom/narvii/amino/speeddial/VVActiveUserLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout$1;-><init>(Lcom/narvii/amino/speeddial/VVActiveUserLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/amino/speeddial/VVActiveUserLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startSpeakingAnimation()V

    return-void
.end method

.method private containeCurUser(Lcom/narvii/model/User;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    move v1, v0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0a0d63

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v0
.end method

.method private getMappedUserViewIndex(Lcom/narvii/model/User;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0a0d63

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    return v1

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v0
.end method

.method private getRunningIndex(Ljava/lang/String;)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/User;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_2
    :goto_0
    return v1
.end method

.method private getUserById(Ljava/lang/String;)Lcom/narvii/model/User;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/User;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    return-object v2

    .line 42
    :cond_2
    :goto_0
    return-object v1
.end method

.method private startAnimation()V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Landroidx/transition/ChangeBounds;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 6
    .line 7
    const-wide/16 v1, 0x64

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 11
    .line 12
    new-instance v1, Landroidx/transition/Fade;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    .line 17
    .line 18
    const-wide/16 v3, 0xc8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3, v4}, Landroidx/transition/Transition;->Y(J)Landroidx/transition/Transition;

    .line 22
    .line 23
    new-instance v3, Landroidx/transition/TransitionSet;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3}, Landroidx/transition/TransitionSet;-><init>()V

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroidx/transition/TransitionSet;->r0(I)Landroidx/transition/TransitionSet;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroidx/transition/TransitionSet;->j0(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v3}, Landroidx/transition/TransitionManager;->b(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    .line 47
    .line 48
    .line 49
    const v3, 0x7f07024a

    .line 50
    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v1

    .line 64
    .line 65
    iput v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    .line 66
    .line 67
    :cond_0
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v1

    .line 82
    .line 83
    iput v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 84
    .line 85
    :cond_1
    iget v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 86
    .line 87
    iget v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 91
    move-result v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 95
    move-result v3

    .line 96
    const/4 v5, 0x2

    .line 97
    mul-int/2addr v3, v5

    .line 98
    sub-int/2addr v1, v3

    .line 99
    int-to-float v3, v1

    .line 100
    .line 101
    if-ne v0, v2, :cond_2

    .line 102
    .line 103
    .line 104
    const v6, 0x3ef5c28f    # 0.48f

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_2
    const v6, 0x3ecccccd    # 0.4f

    .line 109
    :goto_0
    mul-float/2addr v3, v6

    .line 110
    float-to-int v3, v3

    .line 111
    move v6, v4

    .line 112
    .line 113
    :goto_1
    if-ge v6, v0, :cond_14

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    move-result-object v7

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    move-result-object v7

    .line 125
    .line 126
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .line 128
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 129
    .line 130
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 131
    .line 132
    if-ne v0, v2, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 136
    move-result v8

    .line 137
    .line 138
    if-eqz v8, :cond_3

    .line 139
    .line 140
    div-int/lit8 v8, v1, 0x2

    .line 141
    .line 142
    div-int/lit8 v9, v3, 0x2

    .line 143
    sub-int/2addr v8, v9

    .line 144
    .line 145
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 146
    goto :goto_2

    .line 147
    .line 148
    :cond_3
    div-int/lit8 v8, v1, 0x2

    .line 149
    .line 150
    div-int/lit8 v9, v3, 0x2

    .line 151
    sub-int/2addr v8, v9

    .line 152
    .line 153
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 154
    .line 155
    :goto_2
    div-int/lit8 v8, v1, 0x2

    .line 156
    .line 157
    div-int/lit8 v9, v3, 0x2

    .line 158
    sub-int/2addr v8, v9

    .line 159
    .line 160
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 161
    .line 162
    goto/16 :goto_18

    .line 163
    .line 164
    :cond_4
    if-ne v0, v5, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 168
    move-result v8

    .line 169
    .line 170
    if-eqz v8, :cond_6

    .line 171
    .line 172
    rem-int/lit8 v8, v6, 0x2

    .line 173
    .line 174
    if-nez v8, :cond_5

    .line 175
    .line 176
    div-int/lit8 v8, v1, 0x4

    .line 177
    .line 178
    :goto_3
    div-int/lit8 v9, v3, 0x2

    .line 179
    sub-int/2addr v8, v9

    .line 180
    goto :goto_4

    .line 181
    .line 182
    :cond_5
    mul-int/lit8 v8, v1, 0x3

    .line 183
    .line 184
    div-int/lit8 v8, v8, 0x4

    .line 185
    goto :goto_3

    .line 186
    .line 187
    :goto_4
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    goto :goto_7

    .line 189
    .line 190
    :cond_6
    rem-int/lit8 v8, v6, 0x2

    .line 191
    .line 192
    if-nez v8, :cond_7

    .line 193
    .line 194
    div-int/lit8 v8, v1, 0x4

    .line 195
    .line 196
    :goto_5
    div-int/lit8 v9, v3, 0x2

    .line 197
    sub-int/2addr v8, v9

    .line 198
    goto :goto_6

    .line 199
    .line 200
    :cond_7
    mul-int/lit8 v8, v1, 0x3

    .line 201
    .line 202
    div-int/lit8 v8, v8, 0x4

    .line 203
    goto :goto_5

    .line 204
    .line 205
    :goto_6
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 206
    .line 207
    :goto_7
    div-int/lit8 v8, v1, 0x2

    .line 208
    .line 209
    div-int/lit8 v9, v3, 0x2

    .line 210
    sub-int/2addr v8, v9

    .line 211
    .line 212
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 213
    .line 214
    goto/16 :goto_18

    .line 215
    :cond_8
    const/4 v8, 0x3

    .line 216
    .line 217
    if-ne v0, v8, :cond_f

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 221
    move-result v8

    .line 222
    .line 223
    if-eqz v8, :cond_b

    .line 224
    .line 225
    if-ne v6, v5, :cond_9

    .line 226
    .line 227
    div-int/lit8 v8, v1, 0x2

    .line 228
    .line 229
    div-int/lit8 v9, v3, 0x2

    .line 230
    :goto_8
    sub-int/2addr v8, v9

    .line 231
    goto :goto_a

    .line 232
    .line 233
    :cond_9
    rem-int/lit8 v8, v6, 0x2

    .line 234
    .line 235
    if-nez v8, :cond_a

    .line 236
    .line 237
    div-int/lit8 v8, v1, 0x4

    .line 238
    .line 239
    :goto_9
    div-int/lit8 v9, v3, 0x2

    .line 240
    goto :goto_8

    .line 241
    .line 242
    :cond_a
    mul-int/lit8 v8, v1, 0x3

    .line 243
    .line 244
    div-int/lit8 v8, v8, 0x4

    .line 245
    goto :goto_9

    .line 246
    .line 247
    :goto_a
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 248
    goto :goto_e

    .line 249
    .line 250
    :cond_b
    if-ne v6, v5, :cond_c

    .line 251
    .line 252
    div-int/lit8 v8, v1, 0x2

    .line 253
    .line 254
    div-int/lit8 v9, v3, 0x2

    .line 255
    :goto_b
    sub-int/2addr v8, v9

    .line 256
    goto :goto_d

    .line 257
    .line 258
    :cond_c
    rem-int/lit8 v8, v6, 0x2

    .line 259
    .line 260
    if-nez v8, :cond_d

    .line 261
    .line 262
    div-int/lit8 v8, v1, 0x4

    .line 263
    .line 264
    :goto_c
    div-int/lit8 v9, v3, 0x2

    .line 265
    goto :goto_b

    .line 266
    .line 267
    :cond_d
    mul-int/lit8 v8, v1, 0x3

    .line 268
    .line 269
    div-int/lit8 v8, v8, 0x4

    .line 270
    goto :goto_c

    .line 271
    .line 272
    :goto_d
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 273
    .line 274
    :goto_e
    if-ge v6, v5, :cond_e

    .line 275
    .line 276
    mul-int/lit8 v8, v1, 0x3

    .line 277
    .line 278
    div-int/lit8 v8, v8, 0x4

    .line 279
    .line 280
    :goto_f
    div-int/lit8 v9, v3, 0x2

    .line 281
    sub-int/2addr v8, v9

    .line 282
    goto :goto_10

    .line 283
    .line 284
    :cond_e
    div-int/lit8 v8, v1, 0x4

    .line 285
    goto :goto_f

    .line 286
    .line 287
    :goto_10
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 288
    goto :goto_18

    .line 289
    .line 290
    .line 291
    :cond_f
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 292
    move-result v8

    .line 293
    .line 294
    if-eqz v8, :cond_11

    .line 295
    .line 296
    rem-int/lit8 v8, v6, 0x2

    .line 297
    .line 298
    if-nez v8, :cond_10

    .line 299
    .line 300
    div-int/lit8 v8, v1, 0x4

    .line 301
    .line 302
    :goto_11
    div-int/lit8 v9, v3, 0x2

    .line 303
    sub-int/2addr v8, v9

    .line 304
    goto :goto_12

    .line 305
    .line 306
    :cond_10
    mul-int/lit8 v8, v1, 0x3

    .line 307
    .line 308
    div-int/lit8 v8, v8, 0x4

    .line 309
    goto :goto_11

    .line 310
    .line 311
    :goto_12
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 312
    goto :goto_15

    .line 313
    .line 314
    :cond_11
    rem-int/lit8 v8, v6, 0x2

    .line 315
    .line 316
    if-nez v8, :cond_12

    .line 317
    .line 318
    div-int/lit8 v8, v1, 0x4

    .line 319
    .line 320
    :goto_13
    div-int/lit8 v9, v3, 0x2

    .line 321
    sub-int/2addr v8, v9

    .line 322
    goto :goto_14

    .line 323
    .line 324
    :cond_12
    mul-int/lit8 v8, v1, 0x3

    .line 325
    .line 326
    div-int/lit8 v8, v8, 0x4

    .line 327
    goto :goto_13

    .line 328
    .line 329
    :goto_14
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 330
    .line 331
    :goto_15
    if-ge v6, v5, :cond_13

    .line 332
    .line 333
    mul-int/lit8 v8, v1, 0x3

    .line 334
    .line 335
    div-int/lit8 v8, v8, 0x4

    .line 336
    .line 337
    :goto_16
    div-int/lit8 v9, v3, 0x2

    .line 338
    sub-int/2addr v8, v9

    .line 339
    goto :goto_17

    .line 340
    .line 341
    :cond_13
    div-int/lit8 v8, v1, 0x4

    .line 342
    goto :goto_16

    .line 343
    .line 344
    :goto_17
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 345
    .line 346
    :goto_18
    add-int/lit8 v6, v6, 0x1

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    :cond_14
    return-void
.end method

.method private startSpeakingAnimation()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 15
    move-result v1

    .line 16
    rem-int/2addr v1, v0

    .line 17
    const/4 v0, 0x0

    .line 18
    move v2, v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v3

    .line 23
    .line 24
    if-ge v2, v3, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    const v4, 0x7f0a0c47

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 38
    .line 39
    .line 40
    const v5, 0x7f0a0d63

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    iput-object v5, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    .line 49
    .line 50
    if-ne v2, v1, :cond_1

    .line 51
    const/4 v5, 0x3

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v5, v0

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v4, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 57
    .line 58
    .line 59
    const v4, 0x7f0a0171

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v4}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->getUserById(Ljava/lang/String;)Lcom/narvii/model/User;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 81
    move-result v4

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    if-eq v2, v1, :cond_2

    .line 86
    .line 87
    .line 88
    const v4, 0x7f060058

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_2
    if-ne v2, v1, :cond_3

    .line 92
    .line 93
    .line 94
    const v4, 0x7f06005a

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_3
    const v4, 0x7f060059

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 102
    move-result v4

    .line 103
    .line 104
    iput v4, v3, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    return-void
.end method

.method private updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    .line 8
    :cond_0
    const v0, 0x7f0a0171

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    const v1, 0x7f060058

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    const v1, 0x7f060059

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    move-result v0

    .line 36
    .line 37
    iput v0, p1, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 45
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addUser()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/User;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg"

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewWidth:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->viewHeight:I

    .line 8
    return-void
.end method

.method public removeUser()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->random:Ljava/util/Random;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-le v1, v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    .line 35
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Lcom/narvii/model/User;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->curRunningUid:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startSpeakingAnimation()V

    .line 63
    :cond_4
    move v2, v1

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x4

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v3

    .line 73
    .line 74
    if-ge v2, v3, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    check-cast v3, Lcom/narvii/model/User;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-eqz v4, :cond_5

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_6
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v2

    .line 109
    .line 110
    if-le v2, v4, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    new-instance p1, Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    move v0, v1

    .line 124
    .line 125
    .line 126
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 127
    move-result v2

    .line 128
    .line 129
    .line 130
    const v3, 0x7f0a0d63

    .line 131
    .line 132
    if-ge v0, v2, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    instance-of v5, v3, Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v5, :cond_8

    .line 145
    .line 146
    iget-object v5, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 147
    .line 148
    check-cast v3, Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 152
    move-result v3

    .line 153
    .line 154
    if-nez v3, :cond_8

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 160
    goto :goto_3

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    check-cast v0, Landroid/view/View;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    goto :goto_4

    .line 181
    :cond_a
    move p1, v1

    .line 182
    .line 183
    :goto_5
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    move-result v0

    .line 188
    .line 189
    if-ge p1, v0, :cond_11

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->users:Ljava/util/List;

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    check-cast v0, Lcom/narvii/model/User;

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->getMappedUserViewIndex(Lcom/narvii/model/User;)I

    .line 201
    move-result v2

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 205
    move-result-object v5

    .line 206
    const/4 v6, -0x1

    .line 207
    .line 208
    if-eqz v5, :cond_e

    .line 209
    .line 210
    if-eq v2, p1, :cond_d

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 217
    move-result v2

    .line 218
    .line 219
    if-nez v2, :cond_b

    .line 220
    move v2, v1

    .line 221
    goto :goto_6

    .line 222
    :cond_b
    move v2, v4

    .line 223
    .line 224
    .line 225
    :goto_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 229
    move-result v2

    .line 230
    .line 231
    if-lt p1, v2, :cond_c

    .line 232
    goto :goto_7

    .line 233
    :cond_c
    move v6, p1

    .line 234
    .line 235
    .line 236
    :goto_7
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    .line 238
    .line 239
    :cond_d
    invoke-direct {p0, v5, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V

    .line 240
    goto :goto_a

    .line 241
    .line 242
    .line 243
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    .line 247
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 248
    move-result-object v2

    .line 249
    .line 250
    .line 251
    const v5, 0x7f0d049e

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, v2, v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateItemView(Landroid/view/View;Lcom/narvii/model/User;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 269
    move-result v0

    .line 270
    .line 271
    if-nez v0, :cond_f

    .line 272
    move v0, v1

    .line 273
    goto :goto_8

    .line 274
    :cond_f
    move v0, v4

    .line 275
    .line 276
    .line 277
    :goto_8
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    const v0, 0x7f0a0c47

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    move-result-object v0

    .line 285
    .line 286
    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 293
    move-result v0

    .line 294
    .line 295
    if-lt p1, v0, :cond_10

    .line 296
    goto :goto_9

    .line 297
    :cond_10
    move v6, p1

    .line 298
    .line 299
    .line 300
    :goto_9
    invoke-virtual {p0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 301
    .line 302
    :goto_a
    add-int/lit8 p1, p1, 0x1

    .line 303
    goto :goto_5

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->startAnimation()V

    .line 307
    .line 308
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 312
    move-result p1

    .line 313
    .line 314
    if-nez p1, :cond_12

    .line 315
    .line 316
    iget-object p1, p0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->speakingAnimator:Landroid/animation/ValueAnimator;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 320
    :cond_12
    return-void
.end method
