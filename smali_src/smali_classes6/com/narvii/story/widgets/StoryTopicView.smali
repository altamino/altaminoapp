.class public Lcom/narvii/story/widgets/StoryTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;
    }
.end annotation


# instance fields
.field private blinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private blinkEnabled:Z

.field imgBg:Lcom/narvii/widget/NVImageView;

.field imgOverlay:Lcom/narvii/widget/NVImageView;

.field private isPreview:Z

.field onPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

.field showBg:Z

.field private textPadding:I

.field private textSize:F

.field private topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/amino/R$styleable;->StoryTopicView:[I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    const/high16 v2, 0x41300000    # 11.0f

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 29
    move-result v2

    .line 30
    .line 31
    iput v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->textPadding:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0d071d

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    const p2, 0x7f0d071b

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    return-void
.end method

.method public static synthetic a(Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryTopicView;->startBlink()V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/story/widgets/StoryTopicView;->lambda$startBlink$0(Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$startBlink$0(Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    check-cast p4, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p4

    .line 11
    mul-float/2addr p2, p4

    .line 12
    float-to-int p2, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawableColor()I

    .line 16
    move-result p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startBlink()V
    .locals 14

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a01d5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    check-cast v1, Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Landroid/widget/ImageView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 29
    .line 30
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    const/4 v3, -0x1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    const v4, 0x7f0701ea

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 70
    move-result v4

    .line 71
    .line 72
    .line 73
    const v5, 0x3dcccccd    # 0.1f

    .line 74
    .line 75
    if-lez v4, :cond_2

    .line 76
    int-to-float v4, v4

    .line 77
    .line 78
    div-float v4, v3, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v4, v5

    .line 81
    .line 82
    :goto_0
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 83
    const/4 v7, 0x2

    .line 84
    .line 85
    new-array v8, v7, [F

    .line 86
    .line 87
    const/high16 v9, 0x428c0000    # 70.0f

    .line 88
    .line 89
    div-float v9, v4, v9

    .line 90
    .line 91
    const/high16 v10, 0x3f800000    # 1.0f

    .line 92
    add-float/2addr v9, v10

    .line 93
    .line 94
    aput v9, v8, v2

    .line 95
    add-float/2addr v4, v10

    .line 96
    const/4 v11, 0x1

    .line 97
    .line 98
    aput v4, v8, v11

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    const-wide/16 v12, 0x258

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    move-result v6

    .line 112
    .line 113
    if-lez v6, :cond_3

    .line 114
    int-to-float v5, v6

    .line 115
    .line 116
    div-float v5, v3, v5

    .line 117
    .line 118
    :cond_3
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 119
    .line 120
    new-array v8, v7, [F

    .line 121
    .line 122
    aput v9, v8, v2

    .line 123
    add-float/2addr v5, v10

    .line 124
    .line 125
    aput v5, v8, v11

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    const/high16 v6, 0x40e00000    # 7.0f

    .line 135
    div-float/2addr v3, v6

    .line 136
    .line 137
    const/16 v6, 0xb

    .line 138
    .line 139
    new-array v6, v6, [F

    .line 140
    .line 141
    .line 142
    fill-array-data v6, :array_0

    .line 143
    .line 144
    .line 145
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 146
    move-result-object v6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    new-instance v8, Lcom/narvii/story/widgets/a;

    .line 152
    .line 153
    .line 154
    invoke-direct {v8, p0, v0, v3, v1}, Lcom/narvii/story/widgets/a;-><init>(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    .line 159
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 160
    .line 161
    .line 162
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    const/4 v1, 0x3

    .line 164
    .line 165
    new-array v1, v1, [Landroid/animation/Animator;

    .line 166
    .line 167
    aput-object v4, v1, v2

    .line 168
    .line 169
    aput-object v5, v1, v11

    .line 170
    .line 171
    aput-object v6, v1, v7

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 175
    .line 176
    new-instance v1, Lcom/narvii/story/widgets/StoryTopicView$1;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/StoryTopicView$1;-><init>(Lcom/narvii/story/widgets/StoryTopicView;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    .line 184
    const-wide/16 v1, 0x4b0

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_4
    if-eqz v1, :cond_6

    .line 196
    .line 197
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 198
    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 203
    .line 204
    .line 205
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_6
    :goto_1
    return-void

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
        0x3fd47ae1    # 1.66f
        0x40000000    # 2.0f
        0x3fcccccd    # 1.6f
        0x3f99999a    # 1.2f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method


# virtual methods
.method public enableBlink(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/story/widgets/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/b;-><init>(Lcom/narvii/story/widgets/StoryTopicView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method protected getAutoBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1211ac

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->onPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p0, v1}, Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;->onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V

    .line 30
    .line 31
    :cond_1
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "topic"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget v1, v1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    const-string v1, "__communityId"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    :cond_3
    const-string v0, "__interactionScope"

    .line 84
    const/4 v1, 0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/narvii/story/widgets/StoryTopicView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 95
    return-void

    .line 96
    .line 97
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v0, "topic0problem : StoryTopicView open with error: "

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0192

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0ab1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->textPadding:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 47
    return-void
.end method

.method protected onRadiusUpdated(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/TagRoundView;->onRadiusUpdated(F)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    float-to-int v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    float-to-int p1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 20
    :cond_1
    return-void
.end method

.method public setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->onPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    return-void
.end method

.method public setShowBg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->showBg:Z

    return-void
.end method

.method public setTextMaxWidth(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    :cond_0
    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->showBg:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const/high16 v2, 0x41900000    # 18.0f

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 45
    .line 46
    iget p1, p1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 50
    .line 51
    const/16 p1, 0xb4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    :goto_0
    return-void
.end method
