.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "MyCommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903dc

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.embed_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 114
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 115
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 117
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    move-result-object p1

    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;

    invoke-direct {p2, p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
