.class public Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    instance-of v0, p2, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    check-cast p2, Lcom/narvii/model/User;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 26
    .line 27
    iget v2, p2, Lcom/narvii/model/User;->onlineStatus:I

    .line 28
    const/4 v3, 0x4

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-ne v2, v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    move v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v3

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->moodView:Lcom/narvii/widget/MoodView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->onlineView:Landroid/view/View;

    .line 55
    .line 56
    iget v2, p2, Lcom/narvii/model/User;->onlineStatus:I

    .line 57
    .line 58
    if-ne v2, v1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    move v3, v4

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    iget-object v0, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 80
    .line 81
    :cond_3
    iget-object p1, p1, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 85
    :cond_4
    return-void
.end method

.method public createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0239

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/user-group/quick-access"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "start"

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    .line 21
    const-string p1, "size"

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const-string p1, "stoptime"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object p1

    .line 44
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

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
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

.method protected getItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;->itemLayoutId()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter$FavoriteUserViewHolder;-><init>(Lcom/narvii/user/favorite/FavoriteUserHorizontalAdapter;Landroid/view/View;)V

    .line 27
    return-object p2

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0d03f8

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

    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method protected showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
