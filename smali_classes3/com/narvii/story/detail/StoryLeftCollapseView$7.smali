.class Lcom/narvii/story/detail/StoryLeftCollapseView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryLeftCollapseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryLeftCollapseView;->doCollapseAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 386
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$602(Lcom/narvii/story/detail/StoryLeftCollapseView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$602(Lcom/narvii/story/detail/StoryLeftCollapseView;Z)Z

    .line 381
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$700(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$602(Lcom/narvii/story/detail/StoryLeftCollapseView;Z)Z

    .line 375
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$700(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    return-void
.end method
