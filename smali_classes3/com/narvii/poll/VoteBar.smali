.class public Lcom/narvii/poll/VoteBar;
.super Landroid/widget/FrameLayout;
.source "VoteBar.java"


# static fields
.field private static fmt:Ljava/text/DecimalFormat;


# instance fields
.field colorEnd:I

.field colorGray:I

.field colorStart:I

.field colorVotedEnd:I

.field colorVotedStart:I

.field cornerRadius:F

.field end:J

.field gradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field interp:Landroid/view/animation/Interpolator;

.field p:F

.field paint:Landroid/graphics/Paint;

.field rectf:Landroid/graphics/RectF;

.field start:J

.field valueView:Landroid/widget/TextView;

.field voted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/poll/VoteBar;->fmt:Ljava/text/DecimalFormat;

    .line 80
    sget-object v0, Lcom/narvii/poll/VoteBar;->fmt:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_start_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorStart:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_end_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorEnd:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_voted_start_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorVotedStart:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_voted_end_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorVotedEnd:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->poll_vote_gray_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorGray:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->push_button_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    .line 60
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 62
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 65
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->interp:Landroid/view/animation/Interpolator;

    .line 67
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->gradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 68
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    return-void
.end method

.method private percentText(F)Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/narvii/poll/VoteBar;->fmt:Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 112
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 113
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 114
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 116
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/poll/VoteBar;->colorGray:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 122
    iget-wide v1, p0, Lcom/narvii/poll/VoteBar;->start:J

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    .line 123
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 124
    iget-wide v6, p0, Lcom/narvii/poll/VoteBar;->end:J

    cmp-long v8, v1, v6

    if-gez v8, :cond_0

    .line 125
    iget-wide v3, p0, Lcom/narvii/poll/VoteBar;->start:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float v1, v1, v5

    sub-long/2addr v6, v3

    long-to-float v2, v6

    div-float/2addr v1, v2

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 128
    :cond_0
    iput-wide v3, p0, Lcom/narvii/poll/VoteBar;->end:J

    iput-wide v3, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 129
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    iget v2, p0, Lcom/narvii/poll/VoteBar;->p:F

    invoke-direct {p0, v2}, Lcom/narvii/poll/VoteBar;->percentText(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->interp:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 138
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/narvii/poll/VoteBar;->p:F

    mul-float v1, v1, v4

    sub-float v1, v5, v1

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v3, v2, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_1

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/narvii/poll/VoteBar;->p:F

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-boolean v1, p0, Lcom/narvii/poll/VoteBar;->voted:Z

    if-eqz v1, :cond_3

    .line 145
    iget-object v6, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v10, v1, v5

    iget v11, p0, Lcom/narvii/poll/VoteBar;->colorVotedStart:I

    iget v12, p0, Lcom/narvii/poll/VoteBar;->colorVotedEnd:I

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual/range {v6 .. v13}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 146
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {v2}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v2, v5

    iget v8, p0, Lcom/narvii/poll/VoteBar;->colorStart:I

    iget v9, p0, Lcom/narvii/poll/VoteBar;->colorEnd:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, v1

    invoke-virtual/range {v3 .. v10}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 149
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {v2}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    :goto_2
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/narvii/lib/R$id;->vote_bar_value:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    return-void
.end method

.method public setValue(ZFJ)V
    .locals 1

    .line 88
    iput-boolean p1, p0, Lcom/narvii/poll/VoteBar;->voted:Z

    .line 89
    iput p2, p0, Lcom/narvii/poll/VoteBar;->p:F

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    .line 91
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 92
    iget-wide p1, p0, Lcom/narvii/poll/VoteBar;->start:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->end:J

    .line 93
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 95
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->end:J

    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 99
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 101
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    iget p2, p0, Lcom/narvii/poll/VoteBar;->p:F

    invoke-direct {p0, p2}, Lcom/narvii/poll/VoteBar;->percentText(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
