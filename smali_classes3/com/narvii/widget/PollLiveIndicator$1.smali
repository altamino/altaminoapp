.class Lcom/narvii/widget/PollLiveIndicator$1;
.super Ljava/lang/Object;
.source "PollLiveIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/PollLiveIndicator;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/PollLiveIndicator;


# direct methods
.method constructor <init>(Lcom/narvii/widget/PollLiveIndicator;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$000(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 108
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$000(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

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
