.class Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->init(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 13
    return-void
.end method

.method private init(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    .line 11
    :goto_0
    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->label:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->communityListPreview:Ljava/util/List;

    .line 16
    .line 17
    :cond_1
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/Community;

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 11
    int-to-long v0, p1

    .line 12
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->onBindViewHolder(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 6
    invoke-virtual {v1}, Lcom/narvii/master/explorer/CommunityCollection;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "collectionId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->access$300(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    iget-object v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {v1, v2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_4

    .line 14
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 15
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 16
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter$1;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;Lcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 2
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0384

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;

    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->this$0:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-direct {p2, v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCommunityCollection(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->init(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
