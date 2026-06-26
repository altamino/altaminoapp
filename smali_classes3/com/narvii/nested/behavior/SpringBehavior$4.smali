.class Lcom/narvii/nested/behavior/SpringBehavior$4;
.super Ljava/lang/Object;
.source "SpringBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/behavior/SpringBehavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/behavior/SpringBehavior;

.field final synthetic val$child:Lcom/narvii/nested/NVAppBarLayout;

.field final synthetic val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    iput-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->val$child:Lcom/narvii/nested/NVAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/narvii/nested/behavior/SpringBehavior$4;->val$child:Lcom/narvii/nested/NVAppBarLayout;

    .line 241
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 240
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    return-void
.end method
