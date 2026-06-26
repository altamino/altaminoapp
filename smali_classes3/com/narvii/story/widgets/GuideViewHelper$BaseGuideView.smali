.class public abstract Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;
.super Landroid/widget/FrameLayout;
.source "GuideViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/widgets/GuideViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseGuideView"
.end annotation


# instance fields
.field protected guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

.field protected info:Landroid/os/Bundle;

.field private isHidding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->isHidding:Z

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->isHidding:Z

    return p1
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method protected abstract getPrefKey()Ljava/lang/String;
.end method

.method public hideGuide()V
    .locals 1

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide(Z)V

    return-void
.end method

.method public hideGuide(Z)V
    .locals 4

    .line 186
    iget-boolean v0, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->isHidding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->isHidding:Z

    .line 190
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 193
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 194
    new-instance v0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;-><init>(Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected init()V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method protected onBackPressed()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide()V

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide()V

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public showGuide()V
    .locals 3

    .line 174
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected tryRemove()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 223
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
