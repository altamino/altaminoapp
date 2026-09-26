.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, 0x5dc

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 37
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f11000d

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->playAudioEffect(Landroid/content/Context;I)V

    .line 18
    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string/jumbo v0, "vibrator"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p1, Landroid/os/Vibrator;

    .line 37
    .line 38
    const-wide/16 v0, 0x12c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    return-void
.end method
