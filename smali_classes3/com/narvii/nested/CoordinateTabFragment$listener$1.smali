.class public final Lcom/narvii/nested/CoordinateTabFragment$listener$1;
.super Ljava/lang/Object;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v1}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v1}, Lcom/narvii/nested/CoordinateTabFragment;->getEnableSwipeRefreshLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 167
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {p1}, Lcom/narvii/nested/CoordinateTabFragment;->access$getLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;)I

    move-result p1

    if-eq p1, p2, :cond_4

    .line 168
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-static {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->access$setLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;I)V

    .line 169
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutScroll(I)V

    :cond_4
    return-void
.end method
