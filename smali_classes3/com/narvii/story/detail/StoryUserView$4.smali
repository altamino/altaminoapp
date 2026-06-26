.class Lcom/narvii/story/detail/StoryUserView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryUserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryUserView;->startFollowingFinishedAnimation()V
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

    .line 426
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView$4;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 429
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$4;->this$0:Lcom/narvii/story/detail/StoryUserView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/StoryUserView;->access$602(Lcom/narvii/story/detail/StoryUserView;Z)Z

    .line 430
    iget-object p1, p0, Lcom/narvii/story/detail/StoryUserView$4;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {p1}, Lcom/narvii/story/detail/StoryUserView;->updateView()V

    return-void
.end method
