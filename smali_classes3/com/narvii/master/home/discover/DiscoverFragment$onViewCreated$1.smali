.class public final Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 99
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const-string p2, "getRecyclerView()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 101
    iget-object p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p3}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "v"

    .line 102
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    if-eqz p3, :cond_2

    .line 103
    iget-object p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    instance-of v0, p3, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    check-cast p3, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz p3, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getImmersiveHeaderHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateImmersiveHeader(Z)V

    :cond_2
    return-void

    .line 99
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
