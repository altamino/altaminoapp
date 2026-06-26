.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;
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

    .line 324
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x3c380000    # -400.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43c80000    # 400.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 333
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 334
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

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
