.class Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

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
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->a(Lcom/narvii/monetization/utils/ClaimGiftHintLayout;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    const-wide/16 v0, 0x1f4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftHintLayout$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftHintLayout;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/monetization/utils/ClaimGiftHintLayout;->animatorSet:Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 25
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
