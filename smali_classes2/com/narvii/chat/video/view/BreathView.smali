.class public Lcom/narvii/chat/video/view/BreathView;
.super Landroid/widget/ImageView;
.source "BreathView.java"


# instance fields
.field public final animation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010028

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/view/BreathView;->animation:Landroid/view/animation/Animation;

    .line 23
    iget-object p1, p0, Lcom/narvii/chat/video/view/BreathView;->animation:Landroid/view/animation/Animation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 24
    iget-object p1, p0, Lcom/narvii/chat/video/view/BreathView;->animation:Landroid/view/animation/Animation;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 25
    iget-object p1, p0, Lcom/narvii/chat/video/view/BreathView;->animation:Landroid/view/animation/Animation;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 31
    iget-object v0, p0, Lcom/narvii/chat/video/view/BreathView;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 39
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method
