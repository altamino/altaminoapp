.class Lcom/narvii/story/detail/StoryUserView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryUserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryUserView;->startFollowingAnimation()V
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

    .line 404
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView$3;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 407
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$3;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$400(Lcom/narvii/story/detail/StoryUserView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$3;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryUserView;->access$400(Lcom/narvii/story/detail/StoryUserView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 409
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$3;->this$0:Lcom/narvii/story/detail/StoryUserView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryUserView;->access$502(Lcom/narvii/story/detail/StoryUserView;Z)Z

    return-void
.end method
