.class public final Lcom/narvii/story/widgets/StoryLoadingView$3;
.super Ljava/lang/Object;
.source "StoryLoadingView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryLoadingView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryLoadingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$3;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$3;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryLoadingView;->access$getCanceled$p(Lcom/narvii/story/widgets/StoryLoadingView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryLoadingView$3;->this$0:Lcom/narvii/story/widgets/StoryLoadingView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryLoadingView;->access$getAnimatorSet$p(Lcom/narvii/story/widgets/StoryLoadingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
