.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;
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
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hide()V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->getOnDismiss()Le8/l;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
.end method
