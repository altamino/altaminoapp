.class public Lcom/narvii/story/widgets/StoryTopicView;
.super Lcom/narvii/widget/TagRoundView;
.source "StoryTopicView.java"

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

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TagRoundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    .line 44
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    .line 62
    sget-object v1, Lcom/narvii/amino/R$styleable;->StoryTopicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    .line 64
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->textPadding:I

    .line 66
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    const p2, 0x7f0b067a

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0677

    .line 68
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic lambda$__-WgScqPUF9XTDQeMe_lAwvlnk(Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 0

    invoke-direct {p0}, Lcom/narvii/story/widgets/StoryTopicView;->startBlink()V

    return-void
.end method

.method private startBlink()V
    .locals 14

    const v0, 0x7f090137

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 183
    iget-boolean v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 187
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 196
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07017d

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    if-lez v4, :cond_2

    int-to-float v4, v4

    div-float v4, v3, v4

    goto :goto_0

    :cond_2
    const v4, 0x3dcccccd    # 0.1f

    .line 202
    :goto_0
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/high16 v9, 0x428c0000    # 70.0f

    div-float v9, v4, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    aput v9, v8, v2

    add-float/2addr v4, v10

    const/4 v11, 0x1

    aput v4, v8, v11

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v12, 0x258

    .line 203
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-lez v6, :cond_3

    int-to-float v5, v6

    div-float v5, v3, v5

    .line 207
    :cond_3
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v7, [F

    aput v9, v8, v2

    add-float/2addr v5, v10

    aput v5, v8, v11

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v3, v6

    const/16 v6, 0xb

    new-array v6, v6, [F

    .line 211
    fill-array-data v6, :array_0

    .line 212
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 213
    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 214
    new-instance v8, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;

    invoke-direct {v8, p0, v0, v3, v1}, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA;-><init>(Lcom/narvii/story/widgets/StoryTopicView;Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v2

    aput-object v5, v1, v11

    aput-object v6, v1, v7

    .line 221
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    new-instance v1, Lcom/narvii/story/widgets/StoryTopicView$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/StoryTopicView$1;-><init>(Lcom/narvii/story/widgets/StoryTopicView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x4b0

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 236
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    .line 240
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 243
    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void

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

    .line 74
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->blinkEnabled:Z

    .line 75
    new-instance p1, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$__-WgScqPUF9XTDQeMe_lAwvlnk;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/-$$Lambda$StoryTopicView$__-WgScqPUF9XTDQeMe_lAwvlnk;-><init>(Lcom/narvii/story/widgets/StoryTopicView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getAutoBackgroundColor()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v0, :cond_0

    .line 176
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$startBlink$0$StoryTopicView(Landroid/graphics/drawable/GradientDrawable;FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 215
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float p2, p2, p4

    float-to-int p2, p2

    .line 216
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawableColor()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f10b1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->onPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    if-eqz p1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-interface {p1, p0, v1}, Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;->onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V

    .line 155
    :cond_1
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-nez v1, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "__communityId"

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const/4 v0, 0x1

    const-string v1, "__interactionScope"

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 158
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "topic0problem : StoryTopicView open with error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 108
    invoke-super {p0}, Lcom/narvii/widget/TagRoundView;->onFinishInflate()V

    const v0, 0x7f090103

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09080a

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget v2, p0, Lcom/narvii/story/widgets/StoryTopicView;->textPadding:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    iget v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    invoke-virtual {p0, v0}, Lcom/narvii/story/widgets/StoryTopicView;->setTextSize(F)V

    .line 117
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method protected onRadiusUpdated(F)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/narvii/widget/TagRoundView;->onRadiusUpdated(F)V

    .line 137
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    float-to-int v1, p1

    .line 138
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    float-to-int p1, p1

    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    :cond_1
    return-void
.end method

.method public setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->onPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->isPreview:Z

    return-void
.end method

.method public setShowBg(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->showBg:Z

    return-void
.end method

.method public setTextMaxWidth(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 122
    iput p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->textSize:F

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 3

    .line 83
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 84
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateView()V

    .line 85
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/narvii/story/widgets/StoryTopicView;->showBg:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 88
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 90
    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xb4

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 92
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgBg:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 95
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView;->imgOverlay:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
