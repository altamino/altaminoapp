.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

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

    .line 365
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 373
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 374
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 375
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    nop

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
