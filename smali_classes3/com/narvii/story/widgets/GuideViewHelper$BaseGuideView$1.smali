.class Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;
.super Ljava/lang/Object;
.source "GuideViewHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

.field final synthetic val$isMarkShown:Z


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;Z)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    iput-boolean p2, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->val$isMarkShown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->access$002(Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;Z)Z

    .line 202
    iget-boolean p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->val$isMarkShown:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    iget-object v0, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->getPrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/GuideViewHelper;->markGuideShown(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->tryRemove()V

    .line 207
    iget-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    iget-object p1, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/narvii/story/widgets/GuideViewHelper;->access$100(Lcom/narvii/story/widgets/GuideViewHelper;)Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    iget-object p1, p1, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    invoke-static {p1}, Lcom/narvii/story/widgets/GuideViewHelper;->access$100(Lcom/narvii/story/widgets/GuideViewHelper;)Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView$1;->this$0:Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;->onGuideDismiss(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
