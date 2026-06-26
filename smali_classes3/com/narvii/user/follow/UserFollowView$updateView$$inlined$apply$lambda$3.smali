.class final Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "UserFollowView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animationLayout$inlined:Landroid/view/View;

.field final synthetic $lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic $startWidth$inlined:I

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    iput-object p3, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$animationLayout$inlined:Landroid/view/View;

    iput p4, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$startWidth$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$lp:Landroid/view/ViewGroup$LayoutParams;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$animationLayout$inlined:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$3;->$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 200
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
