.class public Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "FeedRelatedAminosAdapter.java"


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private isDarkTheme:Z


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

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    const-string p2, "affiliations"

    .line 25
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0b03d4

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 37
    instance-of v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 39
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->isDarkTheme:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0xb5b5b6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09060a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-eqz v0, :cond_2

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const p2, 0x7f0f03f5

    goto :goto_2

    :cond_2
    :goto_1
    const p2, 0x7f0f0aa0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->isDarkTheme:Z

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
