.class Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;
.super Ljava/lang/Object;
.source "ClaimGiftHintLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

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

    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    invoke-static {p1}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->access$000(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    iget-object p1, p1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 88
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    iget-object p1, p1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

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
