.class public Lcom/narvii/master/MasterTopBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field alertView:Landroid/widget/FrameLayout;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field balanceView:Lcom/narvii/widget/WalletBalanceView;

.field contentLanguageListener:Landroid/view/View$OnClickListener;

.field context:Lcom/narvii/app/NVContext;

.field expanded:Z

.field profileImage:Lcom/narvii/widget/UserAvatarLayout;

.field private rightMenus:Landroid/view/View;

.field searchBar:Landroid/view/View;

.field searchBarBg:Landroid/view/View;

.field searchBarWithShadow:Landroid/widget/FrameLayout;

.field searchIcon:Lcom/narvii/widget/TintButton;

.field searchText:Landroid/widget/TextView;

.field shadow:Landroid/view/View;

.field tvContentLanguage:Landroid/widget/TextView;

.field tvContentLanguageInfo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 7
    .line 8
    .line 9
    const p2, 0x7f0d038e

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar;->context:Lcom/narvii/app/NVContext;

    .line 19
    return-void
.end method

.method public static synthetic b(Lcom/narvii/master/MasterTopBar;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/master/MasterTopBar;->lambda$collapse$5(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/master/MasterTopBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTopBar;->lambda$expand$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/master/MasterTopBar;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/MasterTopBar;->lambda$expand$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/master/MasterTopBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTopBar;->lambda$collapse$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/master/MasterTopBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTopBar;->lambda$expand$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/master/MasterTopBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTopBar;->lambda$collapse$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$collapse$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    return-void
.end method

.method private synthetic lambda$collapse$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 16
    return-void
.end method

.method private synthetic lambda$collapse$5(IIIILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    sub-int/2addr p1, p2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result v0

    .line 12
    mul-int/2addr p1, v0

    .line 13
    int-to-float p1, p1

    .line 14
    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    div-float/2addr p1, v0

    .line 17
    int-to-float p2, p2

    .line 18
    add-float/2addr p1, p2

    .line 19
    float-to-int p1, p1

    .line 20
    sub-int/2addr p3, p4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p2

    .line 31
    mul-int/2addr p3, p2

    .line 32
    int-to-float p2, p3

    .line 33
    div-float/2addr p2, v0

    .line 34
    int-to-float p3, p4

    .line 35
    add-float/2addr p2, p3

    .line 36
    float-to-int p2, p2

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    const/4 p4, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1, p4, p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method private synthetic lambda$expand$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    return-void
.end method

.method private synthetic lambda$expand$1(IILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    mul-int/2addr v0, p1

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    div-float/2addr v0, v1

    .line 16
    float-to-int v0, v0

    .line 17
    sub-int/2addr p1, v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    check-cast p3, Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p3

    .line 28
    mul-int/2addr p3, p2

    .line 29
    int-to-float p3, p3

    .line 30
    div-float/2addr p3, v1

    .line 31
    float-to-int p3, p3

    .line 32
    sub-int/2addr p2, p3

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1, v0, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method

.method private synthetic lambda$expand$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 14

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 21
    .line 22
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 33
    const/4 v1, 0x2

    .line 34
    .line 35
    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    .line 48
    aput-object v3, v2, v4

    .line 49
    .line 50
    .line 51
    const v3, 0x73ffffff

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 56
    const/4 v5, 0x1

    .line 57
    .line 58
    aput-object v3, v2, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    new-instance v2, Lcom/narvii/master/v;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/narvii/master/v;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    .line 72
    new-instance v2, Landroid/animation/ArgbEvaluator;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 76
    .line 77
    new-array v3, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/narvii/widget/TintButton;->getTintColor()I

    .line 83
    move-result v6

    .line 84
    .line 85
    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    .line 89
    aput-object v6, v3, v4

    .line 90
    .line 91
    .line 92
    const v6, 0x4cffffff    # 1.3421772E8f

    .line 93
    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v6

    .line 97
    .line 98
    aput-object v6, v3, v5

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    new-instance v3, Lcom/narvii/master/w;

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, p0}, Lcom/narvii/master/w;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    const v6, 0x7f0702fe

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    move-result v9

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    const v6, 0x7f0702ff

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    move-result v11

    .line 141
    .line 142
    const/16 v3, 0x64

    .line 143
    .line 144
    .line 145
    filled-new-array {v4, v3}, [I

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    move-result-object v6

    .line 157
    .line 158
    .line 159
    invoke-static {v6}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    .line 160
    move-result v10

    .line 161
    .line 162
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v6

    .line 167
    .line 168
    .line 169
    invoke-static {v6}, Lcom/narvii/util/ViewUtils;->getMarginEnd(Landroid/view/ViewGroup$LayoutParams;)I

    .line 170
    move-result v12

    .line 171
    .line 172
    new-instance v6, Lcom/narvii/master/x;

    .line 173
    move-object v7, v6

    .line 174
    move-object v8, p0

    .line 175
    .line 176
    .line 177
    invoke-direct/range {v7 .. v12}, Lcom/narvii/master/x;-><init>(Lcom/narvii/master/MasterTopBar;IIII)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    .line 182
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    .line 183
    .line 184
    const/16 v7, 0x8

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    iget-object v6, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 195
    .line 196
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 197
    .line 198
    new-array v8, v1, [F

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 202
    move-result v9

    .line 203
    .line 204
    aput v9, v8, v4

    .line 205
    .line 206
    const/high16 v9, 0x3f800000    # 1.0f

    .line 207
    .line 208
    aput v9, v8, v5

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 212
    move-result-object v6

    .line 213
    .line 214
    iget-object v8, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 215
    .line 216
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 217
    .line 218
    new-array v10, v1, [F

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    .line 222
    move-result v11

    .line 223
    .line 224
    aput v11, v10, v4

    .line 225
    const/4 v11, 0x0

    .line 226
    .line 227
    aput v11, v10, v5

    .line 228
    .line 229
    .line 230
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 231
    move-result-object v8

    .line 232
    .line 233
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    .line 234
    .line 235
    .line 236
    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    .line 241
    iget-object v10, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 242
    .line 243
    new-array v12, v1, [F

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    .line 247
    move-result v13

    .line 248
    .line 249
    aput v13, v12, v4

    .line 250
    .line 251
    aput v11, v12, v5

    .line 252
    .line 253
    .line 254
    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 255
    move-result-object v9

    .line 256
    .line 257
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    .line 258
    .line 259
    .line 260
    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    .line 265
    iget-object v10, p0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    .line 266
    .line 267
    new-array v11, v1, [F

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 271
    move-result v12

    .line 272
    .line 273
    aput v12, v11, v4

    .line 274
    .line 275
    .line 276
    const v12, 0x3dcccccd    # 0.1f

    .line 277
    .line 278
    aput v12, v11, v5

    .line 279
    .line 280
    .line 281
    invoke-static {v10, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 282
    move-result-object v7

    .line 283
    .line 284
    iget-object v10, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 285
    .line 286
    const-wide/16 v11, 0x12c

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 290
    .line 291
    iget-object v10, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 292
    const/4 v11, 0x7

    .line 293
    .line 294
    new-array v11, v11, [Landroid/animation/Animator;

    .line 295
    .line 296
    aput-object v0, v11, v4

    .line 297
    .line 298
    aput-object v2, v11, v5

    .line 299
    .line 300
    aput-object v3, v11, v1

    .line 301
    const/4 v0, 0x3

    .line 302
    .line 303
    aput-object v6, v11, v0

    .line 304
    const/4 v0, 0x4

    .line 305
    .line 306
    aput-object v8, v11, v0

    .line 307
    const/4 v0, 0x5

    .line 308
    .line 309
    aput-object v9, v11, v0

    .line 310
    const/4 v0, 0x6

    .line 311
    .line 312
    aput-object v7, v11, v0

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 316
    .line 317
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 321
    .line 322
    iput-boolean v4, p0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 323
    return-void
.end method

.method public expand()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 30
    .line 31
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    .line 36
    iput-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 42
    const/4 v2, 0x2

    .line 43
    .line 44
    new-array v3, v2, [Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v4, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x0

    .line 56
    .line 57
    aput-object v4, v3, v5

    .line 58
    .line 59
    .line 60
    const v4, -0xb5b5b6

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x1

    .line 66
    .line 67
    aput-object v6, v3, v7

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    new-instance v3, Lcom/narvii/master/y;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v0}, Lcom/narvii/master/y;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    .line 81
    const/16 v3, 0x64

    .line 82
    .line 83
    .line 84
    filled-new-array {v5, v3}, [I

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    .line 99
    move-result v6

    .line 100
    .line 101
    iget-object v8, v0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object v8

    .line 106
    .line 107
    .line 108
    invoke-static {v8}, Lcom/narvii/util/ViewUtils;->getMarginEnd(Landroid/view/ViewGroup$LayoutParams;)I

    .line 109
    move-result v8

    .line 110
    .line 111
    new-instance v9, Lcom/narvii/master/z;

    .line 112
    .line 113
    .line 114
    invoke-direct {v9, v0, v6, v8}, Lcom/narvii/master/z;-><init>(Lcom/narvii/master/MasterTopBar;II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    .line 119
    new-instance v6, Lcom/narvii/master/MasterTopBar$1;

    .line 120
    .line 121
    .line 122
    invoke-direct {v6, v0}, Lcom/narvii/master/MasterTopBar$1;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    .line 127
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    .line 128
    .line 129
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 130
    .line 131
    .line 132
    invoke-direct {v6, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    .line 137
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    .line 138
    .line 139
    const/16 v8, 0x8

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v6

    .line 151
    .line 152
    .line 153
    const v9, 0x7f0702f5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    move-result v6

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v9

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    move-result-object v9

    .line 166
    .line 167
    .line 168
    const v10, 0x7f0702f7

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 172
    move-result v9

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v10

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object v10

    .line 181
    .line 182
    .line 183
    const v11, 0x7f0702f6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 187
    move-result v10

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 191
    move-result v11

    .line 192
    .line 193
    if-eqz v11, :cond_3

    .line 194
    const/4 v11, -0x1

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    move v11, v7

    .line 197
    .line 198
    :goto_0
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 202
    move-result v13

    .line 203
    add-int/2addr v13, v10

    .line 204
    mul-int/2addr v11, v13

    .line 205
    div-int/2addr v11, v2

    .line 206
    .line 207
    iget-object v13, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 208
    .line 209
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 210
    .line 211
    new-array v15, v2, [F

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13}, Landroid/view/View;->getTranslationX()F

    .line 215
    move-result v16

    .line 216
    .line 217
    aput v16, v15, v5

    .line 218
    int-to-float v11, v11

    .line 219
    .line 220
    aput v11, v15, v7

    .line 221
    .line 222
    .line 223
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 224
    move-result-object v11

    .line 225
    .line 226
    new-instance v13, Landroid/view/animation/OvershootInterpolator;

    .line 227
    .line 228
    .line 229
    const v15, 0x3f99999a    # 1.2f

    .line 230
    .line 231
    .line 232
    invoke-direct {v13, v15}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    .line 237
    new-instance v13, Landroid/animation/ArgbEvaluator;

    .line 238
    .line 239
    .line 240
    invoke-direct {v13}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 241
    .line 242
    new-array v12, v2, [Ljava/lang/Object;

    .line 243
    .line 244
    iget-object v8, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Lcom/narvii/widget/TintButton;->getTintColor()I

    .line 248
    move-result v8

    .line 249
    .line 250
    .line 251
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v8

    .line 253
    .line 254
    aput-object v8, v12, v5

    .line 255
    .line 256
    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    move-result-object v4

    .line 259
    .line 260
    aput-object v4, v12, v7

    .line 261
    .line 262
    .line 263
    invoke-static {v13, v12}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 264
    move-result-object v4

    .line 265
    .line 266
    new-instance v8, Lcom/narvii/master/a0;

    .line 267
    .line 268
    .line 269
    invoke-direct {v8, v0}, Lcom/narvii/master/a0;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 276
    move-result v8

    .line 277
    mul-int/2addr v6, v2

    .line 278
    sub-int/2addr v8, v6

    .line 279
    .line 280
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 284
    move-result v6

    .line 285
    sub-int/2addr v8, v6

    .line 286
    .line 287
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 291
    move-result v6

    .line 292
    sub-int/2addr v8, v6

    .line 293
    sub-int/2addr v8, v10

    .line 294
    div-int/2addr v8, v2

    .line 295
    .line 296
    .line 297
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 298
    move-result v6

    .line 299
    .line 300
    if-eqz v6, :cond_4

    .line 301
    const/4 v12, -0x1

    .line 302
    goto :goto_1

    .line 303
    :cond_4
    move v12, v7

    .line 304
    :goto_1
    sub-int/2addr v8, v9

    .line 305
    mul-int/2addr v12, v8

    .line 306
    .line 307
    iget-object v6, v0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 308
    .line 309
    new-array v8, v2, [F

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 313
    move-result v9

    .line 314
    .line 315
    aput v9, v8, v5

    .line 316
    int-to-float v9, v12

    .line 317
    .line 318
    aput v9, v8, v7

    .line 319
    .line 320
    .line 321
    invoke-static {v6, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 322
    move-result-object v6

    .line 323
    .line 324
    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    .line 325
    .line 326
    .line 327
    invoke-direct {v8, v15}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    .line 332
    iget-object v8, v0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 333
    .line 334
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 335
    .line 336
    new-array v10, v2, [F

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    .line 340
    move-result v12

    .line 341
    .line 342
    aput v12, v10, v5

    .line 343
    const/4 v12, 0x0

    .line 344
    .line 345
    aput v12, v10, v7

    .line 346
    .line 347
    .line 348
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 349
    move-result-object v8

    .line 350
    .line 351
    new-instance v10, Lcom/narvii/master/MasterTopBar$2;

    .line 352
    .line 353
    .line 354
    invoke-direct {v10, v0}, Lcom/narvii/master/MasterTopBar$2;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    .line 359
    iget-object v10, v0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 360
    .line 361
    new-array v13, v2, [F

    .line 362
    .line 363
    .line 364
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 365
    move-result v14

    .line 366
    .line 367
    aput v14, v13, v5

    .line 368
    .line 369
    aput v12, v13, v7

    .line 370
    .line 371
    .line 372
    invoke-static {v10, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 373
    move-result-object v10

    .line 374
    .line 375
    new-instance v12, Lcom/narvii/master/MasterTopBar$3;

    .line 376
    .line 377
    .line 378
    invoke-direct {v12, v0}, Lcom/narvii/master/MasterTopBar$3;-><init>(Lcom/narvii/master/MasterTopBar;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v10, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    .line 383
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    .line 384
    .line 385
    .line 386
    const v13, 0x7f08095c

    .line 387
    .line 388
    .line 389
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 390
    .line 391
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    .line 392
    .line 393
    new-array v13, v2, [F

    .line 394
    .line 395
    .line 396
    fill-array-data v13, :array_0

    .line 397
    .line 398
    .line 399
    invoke-static {v12, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 400
    move-result-object v9

    .line 401
    .line 402
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 403
    .line 404
    const-wide/16 v13, 0x190

    .line 405
    .line 406
    .line 407
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 408
    .line 409
    iget-object v12, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 410
    .line 411
    const/16 v13, 0x8

    .line 412
    .line 413
    new-array v13, v13, [Landroid/animation/Animator;

    .line 414
    .line 415
    aput-object v1, v13, v5

    .line 416
    .line 417
    aput-object v4, v13, v7

    .line 418
    .line 419
    aput-object v3, v13, v2

    .line 420
    const/4 v1, 0x3

    .line 421
    .line 422
    aput-object v8, v13, v1

    .line 423
    const/4 v1, 0x4

    .line 424
    .line 425
    aput-object v10, v13, v1

    .line 426
    const/4 v1, 0x5

    .line 427
    .line 428
    aput-object v11, v13, v1

    .line 429
    const/4 v1, 0x6

    .line 430
    .line 431
    aput-object v6, v13, v1

    .line 432
    const/4 v1, 0x7

    .line 433
    .line 434
    aput-object v9, v13, v1

    .line 435
    .line 436
    .line 437
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 438
    .line 439
    iget-object v1, v0, Lcom/narvii/master/MasterTopBar;->animatorSet:Landroid/animation/AnimatorSet;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 443
    .line 444
    iput-boolean v7, v0, Lcom/narvii/master/MasterTopBar;->expanded:Z

    .line 445
    return-void

    .line 446
    nop

    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0ca5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0ca3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0ca2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBar:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0caa

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchText:Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a06d4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchIcon:Lcom/narvii/widget/TintButton;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0ce4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0c45

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a00f4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Landroid/widget/FrameLayout;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->alertView:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a03f0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a1019

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 104
    .line 105
    .line 106
    const v0, 0x7f0a0928

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->profileImage:Lcom/narvii/widget/UserAvatarLayout;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    .line 117
    .line 118
    if-eqz v0, :cond_0

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/master/MasterTopBar;->contentLanguageListener:Landroid/view/View$OnClickListener;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    :cond_0
    const v0, 0x7f0a03ed

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguage:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 137
    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 142
    :cond_1
    return-void
.end method

.method public refreshBalance()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 8
    :cond_0
    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguage:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setContentLanguageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar;->contentLanguageListener:Landroid/view/View$OnClickListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->tvContentLanguageInfo:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    return-void
.end method

.method public setTopBarElementsVisibility(IZ)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/master/MasterTopBar;->setWalletVisible()V

    .line 6
    .line 7
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/MasterTopBar;->profileImage:Lcom/narvii/widget/UserAvatarLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/master/MasterTopBar;->alertView:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/master/MasterTopBar;->searchBar:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/master/MasterTopBar;->searchBarBg:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->profileImage:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 7
    return-void
.end method

.method public setWalletVisible()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->rightMenus:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    .line 16
    const/16 v2, 0x96

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/master/MasterTopBar;->searchBarWithShadow:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void
.end method
