.class public Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.source "FavoriteUserHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;
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
.field private static final ITEM_TYPE_NORMAL:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 84
    instance-of v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    if-eqz v0, :cond_4

    .line 85
    check-cast p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    .line 86
    invoke-virtual {p0, p2}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p2

    .line 87
    instance-of v0, p2, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    check-cast p2, Lcom/narvii/model/User;

    .line 89
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 90
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    iget v2, p2, Lcom/narvii/model/User;->onlineStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v2, v1, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 92
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->onlineView:Landroid/view/View;

    iget v2, p2, Lcom/narvii/model/User;->onlineStatus:I

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 97
    :cond_3
    iget-object p1, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_4
    return-void
.end method

.method public createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 117
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b020b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 64
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-group/quick-access"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "stoptime"

    .line 68
    invoke-virtual {v0, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
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

    .line 54
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(ILjava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->itemLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;-><init>(Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0b03c2

    return v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
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

    .line 59
    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method protected showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
