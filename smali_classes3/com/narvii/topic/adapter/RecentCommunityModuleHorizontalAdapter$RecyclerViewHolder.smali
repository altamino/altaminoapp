.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "RecentCommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Landroid/view/View;)V
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

    .line 92
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0903dc

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.embed_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f090b9a

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->title:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 98
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 99
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 100
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    move-result-object p2

    new-instance v0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 106
    iget-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
