.class Lcom/narvii/nested/behavior/SpringBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/behavior/SpringBehavior;->animateFlingSpring(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/behavior/SpringBehavior;

.field final synthetic val$abl:Lcom/narvii/nested/NVAppBarLayout;

.field final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/nested/behavior/SpringBehavior$1;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/nested/behavior/SpringBehavior;->c(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 20
    return-void
.end method
