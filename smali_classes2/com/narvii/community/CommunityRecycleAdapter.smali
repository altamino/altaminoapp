.class public Lcom/narvii/community/CommunityRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CommunityRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;,
        Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected communities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method protected endItemLayoutId()I
    .locals 1

    const v0, 0x7f0b03af

    return v0
.end method

.method protected eventOrigin()Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->showEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->showEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0b034a

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    if-eqz v0, :cond_5

    .line 100
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 101
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    if-nez p2, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 105
    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 108
    :cond_1
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 111
    :cond_2
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 112
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_3
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_4

    .line 116
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 117
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 120
    :cond_4
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/community/CommunityRecycleAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/community/CommunityRecycleAdapter$1;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Lcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_5
    instance-of p2, p1, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    if-eqz p2, :cond_6

    .line 127
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    .line 128
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$2;

    invoke-direct {p2, p0}, Lcom/narvii/community/CommunityRecycleAdapter$2;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->itemLayoutId()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 83
    iget-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->endItemLayoutId()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onEndItemClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 142
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->statisticsSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->eventOrigin()Lcom/narvii/util/logging/LoggingOrigin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public setCommunityListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showEnd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected statisticsSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
