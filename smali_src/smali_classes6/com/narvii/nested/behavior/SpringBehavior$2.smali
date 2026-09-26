.class Lcom/narvii/nested/behavior/SpringBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->this$0:Lcom/narvii/nested/behavior/SpringBehavior;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/nested/behavior/SpringBehavior$2;->val$abl:Lcom/narvii/nested/NVAppBarLayout;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/narvii/nested/behavior/SpringBehavior;->b(Lcom/narvii/nested/behavior/SpringBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/narvii/nested/NVAppBarLayout;)V

    .line 13
    return-void
.end method
