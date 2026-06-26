.class Lcom/narvii/story/widgets/StoryTopicView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryTopicView.java"


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

    .line 222
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryTopicView$1;->this$0:Lcom/narvii/story/widgets/StoryTopicView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 226
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-wide/16 v0, 0x4b0

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 232
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
