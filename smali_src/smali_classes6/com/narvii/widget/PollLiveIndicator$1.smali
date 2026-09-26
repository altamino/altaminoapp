.class Lcom/narvii/widget/PollLiveIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->a(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-wide/16 v0, 0x12c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$1;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->a(Lcom/narvii/widget/PollLiveIndicator;)Landroid/animation/AnimatorSet;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 21
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
