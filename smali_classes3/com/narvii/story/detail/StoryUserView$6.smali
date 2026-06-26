.class Lcom/narvii/story/detail/StoryUserView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryUserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryUserView;->reverseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryUserView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryUserView;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView$6;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 484
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$6;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {p1}, Lcom/narvii/story/detail/StoryUserView;->updateView()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 479
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$6;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {p1}, Lcom/narvii/story/detail/StoryUserView;->updateView()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 474
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$6;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$400(Lcom/narvii/story/detail/StoryUserView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
