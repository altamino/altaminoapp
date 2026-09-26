.class public Lcom/narvii/tipping/TippingThanksView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field baseView:Landroid/widget/ImageView;

.field baseViewAlpha:Landroid/animation/ObjectAnimator;

.field chatView:Landroid/widget/TextView;

.field chatViewScaleX:Landroid/animation/ObjectAnimator;

.field chatViewScaleY:Landroid/animation/ObjectAnimator;

.field hasLiked:Z

.field heartView:Landroid/widget/ImageView;

.field heartViewAlpha:Landroid/animation/ObjectAnimator;

.field heartViewRotate:Landroid/animation/ObjectAnimator;

.field heartViewScaleX:Landroid/animation/ObjectAnimator;

.field heartViewScaleY:Landroid/animation/ObjectAnimator;

.field heartViewTranslate:Landroid/animation/ObjectAnimator;

.field isSupportChat:Z

.field layoutComplete:Z

.field tipper:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingThanksView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/tipping/TippingThanksView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/tipping/TippingThanksView;->onAnimationFlowEnded()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0121

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    return-void
.end method

.method private onAnimationFlowEnded()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 7
    return-void
.end method


# virtual methods
.method public bindBebefactor(Lcom/narvii/model/Benefactor;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/tipping/TippingThanksView;->bindBebefactor(Lcom/narvii/model/Benefactor;Z)V

    return-void
.end method

.method public bindBebefactor(Lcom/narvii/model/Benefactor;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Benefactor;->getBenefactor()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->tipper:Lcom/narvii/model/User;

    .line 3
    invoke-interface {p1}, Lcom/narvii/model/Benefactor;->isThanksSent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/tipping/TippingThanksView;->hasLiked:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 6
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isSupportChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 39
    .line 40
    :cond_4
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 46
    .line 47
    :cond_5
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 53
    .line 54
    :cond_6
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 60
    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a01b6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a065f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a02c6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 39
    .line 40
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    new-array v3, v2, [F

    .line 44
    .line 45
    .line 46
    fill-array-data v3, :array_0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-wide/16 v3, 0x3e8

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 61
    .line 62
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 63
    .line 64
    new-array v6, v2, [F

    .line 65
    .line 66
    .line 67
    fill-array-data v6, :array_1

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 80
    .line 81
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 82
    const/4 v7, 0x1

    .line 83
    .line 84
    new-array v8, v7, [F

    .line 85
    .line 86
    const/high16 v9, -0x3d380000    # -100.0f

    .line 87
    const/4 v10, 0x0

    .line 88
    .line 89
    aput v9, v8, v10

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 102
    .line 103
    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 104
    .line 105
    new-array v4, v7, [F

    .line 106
    .line 107
    const/high16 v6, 0x42b40000    # 90.0f

    .line 108
    .line 109
    aput v6, v4, v10

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const-wide/16 v3, 0x1f4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    .line 127
    .line 128
    new-array v6, v2, [F

    .line 129
    .line 130
    .line 131
    fill-array-data v6, :array_2

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    const-wide/16 v6, 0x190

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    .line 144
    .line 145
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 146
    .line 147
    const/high16 v8, 0x40400000    # 3.0f

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    .line 156
    .line 157
    new-array v1, v2, [F

    .line 158
    .line 159
    .line 160
    fill-array-data v1, :array_3

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    .line 171
    .line 172
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 181
    .line 182
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 183
    const/4 v2, 0x3

    .line 184
    .line 185
    new-array v5, v2, [F

    .line 186
    .line 187
    .line 188
    fill-array-data v5, :array_4

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 202
    .line 203
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    .line 204
    .line 205
    new-array v2, v2, [F

    .line 206
    .line 207
    .line 208
    fill-array-data v2, :array_5

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    iput-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 222
    .line 223
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    .line 224
    .line 225
    new-instance v1, Lcom/narvii/tipping/TippingThanksView$1;

    .line 226
    .line 227
    .line 228
    invoke-direct {v1, p0}, Lcom/narvii/tipping/TippingThanksView$1;-><init>(Lcom/narvii/tipping/TippingThanksView;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    .line 233
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    .line 234
    .line 235
    new-instance v1, Lcom/narvii/tipping/TippingThanksView$2;

    .line 236
    .line 237
    .line 238
    invoke-direct {v1, p0}, Lcom/narvii/tipping/TippingThanksView$2;-><init>(Lcom/narvii/tipping/TippingThanksView;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    return-void

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41000000    # 8.0f
    .end array-data

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41000000    # 8.0f
    .end array-data

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    :array_3
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x0
    .end array-data

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->layoutComplete:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingThanksView;->onLayoutComplete()V

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingThanksView;->layoutComplete:Z

    .line 26
    :cond_1
    return-void
.end method

.method protected onLayoutComplete()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

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
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 28
    return-void
.end method

.method public startLikeAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleX:Landroid/animation/ObjectAnimator;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewScaleY:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewTranslate:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewAlpha:Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->baseViewAlpha:Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/tipping/TippingThanksView;->heartViewRotate:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 40
    return-void
.end method
