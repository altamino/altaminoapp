.class public final Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 91
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public springCallback(I)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getEnableSwipeRefreshLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->springRefreshOffset()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->configSpinnerBeforeMove()V

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getEnterRefresh()Z

    move-result v3

    if-nez v3, :cond_5

    .line 98
    iget-object v2, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v2}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    :cond_3
    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->setEnterRefresh(Z)V

    .line 101
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    :cond_4
    if-nez p1, :cond_6

    .line 104
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    .line 106
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshRequestSent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 107
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshRequestSent(Z)V

    .line 108
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/nested/CoordinateTabFragment;->setEnterRefresh(Z)V

    :cond_6
    :goto_1
    return-void
.end method
