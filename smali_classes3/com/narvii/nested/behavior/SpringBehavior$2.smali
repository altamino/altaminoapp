.class Lcom/narvii/nested/behavior/SpringBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpringBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/behavior/SpringBehavior;->animateFlingSpring(Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/behavior/SpringBehavior;

.field final synthetic val$abl:Lcom/narvii/nested/NVAppBarLayout;

.field final synthetic val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    iput-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 103
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    invoke-static {p1, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->access$100(Lcom/narvii/nested/behavior/SpringBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    return-void
.end method
