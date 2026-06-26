.class public Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LinearLayoutManagerWithSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 19
    new-instance p2, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller;-><init>(Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;Landroid/content/Context;)V

    .line 20
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
