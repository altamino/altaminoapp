.class final Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;
.super Ljava/lang/Object;
.source "GlobalProfileFollowView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iput-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    .line 174
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 174
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
