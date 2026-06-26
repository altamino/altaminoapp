.class Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "RecommendedFeedsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/RecommendedFeedsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/RecommendedFeedsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;

    .line 62
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private hasVoted(Lcom/narvii/model/Feed;)Z
    .locals 2

    .line 84
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/narvii/model/Blog;

    .line 86
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p1

    if-lez p1, :cond_1

    return v1

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lcom/narvii/model/Item;

    .line 92
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isProcessing(Lcom/narvii/model/Feed;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    if-eqz p3, :cond_7

    .line 124
    check-cast p1, Lcom/narvii/model/Feed;

    .line 125
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    const p3, 0x7f090451

    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090450

    .line 127
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090764

    .line 128
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 129
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    const v1, -0xb5b5b6

    if-eqz v0, :cond_0

    .line 130
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 132
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    const p3, 0x7f0907aa

    .line 134
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b04a8

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0907a9

    .line 139
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0907ab

    .line 140
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, p1, p3, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 143
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 144
    iput-boolean v1, p2, Lcom/narvii/feed/FeedListItem;->disableClick:Z

    :cond_7
    return-object p2
.end method

.method public onAttach()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedFeedsFragment;->feeds:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 80
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 108
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    .line 109
    check-cast p3, Lcom/narvii/model/Feed;

    .line 110
    invoke-direct {p0, p3}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 117
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
