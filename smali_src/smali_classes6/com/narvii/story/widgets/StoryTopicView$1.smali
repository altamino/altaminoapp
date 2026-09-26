.class Lcom/narvii/story/widgets/StoryTopicView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryTopicView;->startBlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryTopicView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView$1;->this$0:Lcom/narvii/story/widgets/StoryTopicView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x4b0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 9
    return-void
.end method
