.class Lcom/narvii/story/widgets/StoryVoteView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryVoteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryVoteView;->prepareAnimation(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryVoteView;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryVoteView;Landroid/widget/ImageView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryVoteView$1;->this$0:Lcom/narvii/story/widgets/StoryVoteView;

    iput-object p2, p0, Lcom/narvii/story/widgets/StoryVoteView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 75
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryVoteView$1;->this$0:Lcom/narvii/story/widgets/StoryVoteView;

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryVoteView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method
