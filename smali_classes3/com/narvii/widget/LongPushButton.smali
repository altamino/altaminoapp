.class public Lcom/narvii/widget/LongPushButton;
.super Lcom/narvii/widget/PushButton;
.source "LongPushButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;,
        Lcom/narvii/widget/LongPushButton$AllowLongPushListener;
    }
.end annotation


# static fields
.field static final hsv:[F


# instance fields
.field allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

.field contentColorEnd:I

.field contentColorStart:I

.field private contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

.field dropDuration:J

.field growDuration:J

.field lock:Z

.field public longPressCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/widget/LongPushButton;",
            ">;"
        }
    .end annotation
.end field

.field lt:J

.field p:F

.field resetPress:Z

.field shadowColorEnd:I

.field shadowColorStart:I

.field private shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 38
    sput-object v0, Lcom/narvii/widget/LongPushButton;->hsv:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PushButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x190

    .line 28
    iput-wide p1, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    const-wide/16 p1, 0x12c

    .line 29
    iput-wide p1, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 44
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 45
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->poll_vote_btn_start_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/LongPushButton;->contentColorStart:I

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->poll_vote_btn_end_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/LongPushButton;->contentColorEnd:I

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->long_push_btn_shadow_start_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/LongPushButton;->shadowColorStart:I

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->long_push_btn_shadow_end_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/LongPushButton;->shadowColorEnd:I

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/widget/LongPushButton$AllowLongPushListener;->allowLongPush()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->dispatchSetPressed(Z)V

    .line 105
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p1}, Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;->onPress(Z)V

    :cond_1
    const-wide/16 v0, 0x190

    if-eqz p1, :cond_2

    .line 109
    iput-wide v0, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    goto :goto_0

    :cond_2
    const/16 v2, 0x96

    .line 111
    iget v3, p0, Lcom/narvii/widget/LongPushButton;->p:F

    const/high16 v4, 0x43480000    # 200.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 113
    :goto_0
    iget-boolean v2, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    or-int/2addr p1, v2

    .line 114
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 115
    iget v3, p0, Lcom/narvii/widget/LongPushButton;->p:F

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 116
    iput-wide v0, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_6

    .line 118
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/narvii/lib/R$id;->hold_longer:I

    if-ne v1, v3, :cond_3

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/narvii/lib/R$anim;->poll_hold_longer_shake:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/narvii/lib/R$anim;->poll_fade_out_in:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_6

    .line 127
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public lock(Z)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    if-eq v0, p1, :cond_0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 139
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p0}, Lcom/narvii/widget/LongPushButton;->isPressed()Z

    move-result v0

    .line 142
    iget-boolean v1, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 143
    iput v3, p0, Lcom/narvii/widget/LongPushButton;->p:F

    goto/16 :goto_1

    .line 144
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 145
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_3

    :cond_2
    if-nez v0, :cond_7

    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 146
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    const-wide/16 v8, 0xc8

    if-eqz v0, :cond_5

    .line 148
    iget-wide v0, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    sub-long v0, v4, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v0, v0, v3

    iget-wide v6, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    long-to-float v1, v6

    div-float/2addr v0, v1

    .line 149
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    const v6, 0x3f266666    # 0.65f

    mul-float v6, v6, v1

    sub-float v6, v3, v6

    mul-float v0, v0, v6

    add-float/2addr v1, v0

    .line 150
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 151
    iget v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->longPressCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_4

    .line 153
    invoke-interface {v0, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 156
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    .line 157
    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :cond_5
    iget-wide v0, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    sub-long v0, v4, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v0, v0, v3

    iget-wide v6, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    long-to-float v1, v6

    div-float/2addr v0, v1

    .line 163
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    sub-float/2addr v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 165
    :catch_0
    :cond_6
    :goto_0
    iput-wide v4, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 169
    :cond_7
    :goto_1
    iget v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 171
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/narvii/widget/LongPushButton;->p:F

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_2

    .line 174
    :cond_8
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/narvii/widget/LongPushButton;->p:F

    mul-float v1, v1, v4

    add-float/2addr v1, v2

    iget-object v4, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 176
    :goto_2
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/narvii/widget/LongPushButton;->setShadowPaintStyle(Landroid/graphics/Paint;)V

    .line 177
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    iget-object v3, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    .line 94
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setAllowLongPushListener(Lcom/narvii/widget/LongPushButton$AllowLongPushListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

    return-void
.end method

.method protected setContentPaintStyle(Landroid/graphics/Paint;)V
    .locals 9

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    iget-object v1, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v5, v0, v2

    iget v6, p0, Lcom/narvii/widget/LongPushButton;->contentColorStart:I

    iget v7, p0, Lcom/narvii/widget/LongPushButton;->contentColorEnd:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 187
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setDispatchSetPressedListener(Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

    return-void
.end method

.method protected setShadowPaintStyle(Landroid/graphics/Paint;)V
    .locals 9

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 193
    iget-object v1, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v5, v0, v2

    iget v6, p0, Lcom/narvii/widget/LongPushButton;->shadowColorStart:I

    iget v7, p0, Lcom/narvii/widget/LongPushButton;->shadowColorEnd:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 194
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    invoke-virtual {v0}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
