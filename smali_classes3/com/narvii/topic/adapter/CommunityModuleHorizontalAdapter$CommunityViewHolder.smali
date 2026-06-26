.class public final Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "CommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommunityViewHolder"
.end annotation


# instance fields
.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Landroid/view/View;)V
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

    .line 149
    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903dc

    .line 150
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.embed_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 153
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 154
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
