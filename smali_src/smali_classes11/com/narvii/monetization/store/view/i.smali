.class public final synthetic Lcom/narvii/monetization/store/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/store/view/TippingRippleView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/i;->a:Lcom/narvii/monetization/store/view/TippingRippleView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/view/i;->a:Lcom/narvii/monetization/store/view/TippingRippleView;

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->a(Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
