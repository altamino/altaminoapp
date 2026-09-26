.class public final synthetic Lcom/narvii/monetization/store/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/h;->a:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/view/h;->a:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->a(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
