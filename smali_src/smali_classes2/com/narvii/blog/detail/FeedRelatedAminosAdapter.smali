.class public Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 4
    .line 5
    const-string p2, "affiliations"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 14
    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0d040a

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/model/Community;

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->isDarkTheme:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v1, -0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    const v1, -0xb5b5b6

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0788

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 52
    move-result p2

    .line 53
    .line 54
    if-nez p2, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_1
    const p2, 0x7f120461

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    const p2, 0x7f120b53

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :cond_3
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/blog/detail/FeedRelatedAminosAdapter;->isDarkTheme:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
