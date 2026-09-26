.class Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/behavior/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic this$0:Lcom/narvii/nested/behavior/HeaderBehavior;


# direct methods
.method constructor <init>(Lcom/narvii/nested/behavior/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/narvii/nested/behavior/HeaderBehavior;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/narvii/nested/behavior/HeaderBehavior;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/narvii/nested/behavior/HeaderBehavior;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/narvii/nested/behavior/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/nested/behavior/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->this$0:Lcom/narvii/nested/behavior/HeaderBehavior;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/nested/behavior/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/narvii/nested/behavior/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 47
    :cond_1
    :goto_0
    return-void
.end method
