.class Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CommunityPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryRecycleViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

.field communityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 536
    invoke-direct {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->init(Lcom/narvii/master/explorer/CommunityCollection;)V

    const/4 p1, 0x1

    .line 537
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private init(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 2

    .line 556
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 557
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->label:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 558
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->communityListPreview:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 547
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 529
    check-cast p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->onBindViewHolder(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;I)V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-nez p2, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 573
    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {v1}, Lcom/narvii/master/explorer/CommunityCollection;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "collectionId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$400(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V

    .line 579
    :cond_1
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {v0, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 582
    :cond_2
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 583
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    iget-object v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {v1, v2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    :cond_3
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_4

    .line 588
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 589
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 592
    :cond_4
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;Lcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 529
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;
    .locals 2

    .line 563
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b034a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 564
    new-instance p2, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-direct {p2, v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCommunityCollection(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->init(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 552
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
