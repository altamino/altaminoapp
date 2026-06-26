.class public abstract Lcom/narvii/members/HorizontalMemberAdapter;
.super Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.source "HorizontalMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;,
        Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/widget/recycleview/NVRecycleAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ITEM_TYPE_END:I = 0x1

.field protected static final ITEM_TYPE_NORMAL:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 63
    instance-of v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 65
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    instance-of v3, v2, Lcom/narvii/model/User;

    if-nez v3, :cond_0

    return-void

    .line 67
    :cond_0
    check-cast v2, Lcom/narvii/model/User;

    .line 68
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->shouldShakeMoods()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    invoke-virtual {v3}, Lcom/narvii/widget/MoodView;->shakeCrazily()V

    .line 72
    :cond_1
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    iget v5, v2, Lcom/narvii/model/User;->onlineStatus:I

    const/4 v6, 0x4

    if-ne v5, v4, :cond_2

    invoke-virtual {v2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    invoke-virtual {v3, v2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 74
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->onlineView:Landroid/view/View;

    iget v5, v2, Lcom/narvii/model/User;->onlineStatus:I

    if-ne v5, v4, :cond_3

    invoke-virtual {v2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v3, :cond_4

    .line 77
    invoke-virtual {v3, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 79
    :cond_4
    iget-object v3, v0, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v3, v2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 80
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    if-nez p2, :cond_6

    .line 82
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 88
    :cond_6
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 89
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 91
    :cond_7
    instance-of v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    if-eqz v0, :cond_b

    .line 92
    check-cast p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    .line 93
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    .line 95
    instance-of v0, p2, Lcom/narvii/model/User;

    if-nez v0, :cond_8

    return-void

    .line 96
    :cond_8
    check-cast p2, Lcom/narvii/model/User;

    .line 97
    iget-object v0, p1, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 100
    :cond_9
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 101
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 103
    :cond_a
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getDefaultPadding()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_b
    :goto_1
    return-void
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultPadding()I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getEndItemLayoutId()I
    .locals 1

    const v0, 0x7f0b04d8

    return v0
.end method

.method protected getItemType(ILjava/lang/Object;)I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getNormalItemLayoutId()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;-><init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 55
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter$EndViewHolder;-><init>(Lcom/narvii/members/HorizontalMemberAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getNormalItemLayoutId()I
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    .line 141
    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method protected abstract shouldShakeMoods()Z
.end method
