.class public Lcom/narvii/community/CommunityRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;,
        Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 8
    return-void
.end method


# virtual methods
.method protected endItemLayoutId()I
    .locals 1

    const v0, 0x7f0d03e6

    return v0
.end method

.method protected eventOrigin()Lcom/narvii/util/logging/LoggingOrigin;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->showEnd()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v0

    .line 28
    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->showEnd()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    return v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0d0384

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/model/Community;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 25
    .line 26
    :cond_1
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->launchImageView:Lcom/narvii/widget/PromotionalImageView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 32
    .line 33
    :cond_2
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    :cond_3
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 50
    .line 51
    iget-object v0, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;->iconImageView:Lcom/narvii/widget/NVImageView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/narvii/model/Community;->themeColor()I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 59
    .line 60
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/community/CommunityRecycleAdapter$1;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0, p2}, Lcom/narvii/community/CommunityRecycleAdapter$1;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Lcom/narvii/model/Community;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_5
    instance-of p2, p1, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    .line 76
    .line 77
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 78
    .line 79
    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$2;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p0}, Lcom/narvii/community/CommunityRecycleAdapter$2;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->itemLayoutId()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Landroid/view/View;)V

    .line 27
    return-object p2

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->endItemLayoutId()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Lcom/narvii/community/CommunityRecycleAdapter$EndViewHolder;-><init>(Lcom/narvii/community/CommunityRecycleAdapter;Landroid/view/View;)V

    .line 54
    return-object p2

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method protected onEndItemClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->statisticsSource()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/community/CommunityRecycleAdapter;->eventOrigin()Lcom/narvii/util/logging/LoggingOrigin;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 27
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityRecycleAdapter;->communities:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
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
