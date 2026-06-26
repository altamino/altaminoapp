.class public final Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeaturedUserRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/FeaturedUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfluencerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getListSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getListSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getListSize()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 72
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getUserAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 73
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 75
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 76
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 77
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getMoodView()Lcom/narvii/widget/MoodView;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/User;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 78
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;->getOnlineDot()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/narvii/model/User;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 79
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$1;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;Lcom/narvii/model/User;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 88
    :cond_3
    instance-of p2, p1, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    if-eqz p2, :cond_6

    .line 89
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {p2}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getCommunityService()Lcom/narvii/community/CommunityService;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView;->getCid()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 90
    iget p2, p2, Lcom/narvii/model/Community;->membersCount:I

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 91
    :goto_3
    check-cast p1, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getMemberCount()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getMemberCount()Landroid/widget/TextView;

    move-result-object v0

    if-lez p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 93
    invoke-virtual {p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;->getAllMembers()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2;

    invoke-direct {p2, p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter$onBindViewHolder$2;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0b0337

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;

    iget-object v1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    return-object p2

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0b0336

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;

    iget-object v1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->this$0:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    return-object p2
.end method
