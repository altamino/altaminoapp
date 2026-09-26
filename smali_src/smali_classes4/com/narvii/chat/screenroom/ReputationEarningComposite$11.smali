.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

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
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-wide/16 v0, 0x258

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->E(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-wide/16 v1, 0x3e8

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    :cond_0
    return-void

    .line 62
    nop

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
