.class public Lcom/narvii/onlinestatus/OnlineMembersFragment;
.super Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;
    }
.end annotation


# instance fields
.field favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

.field favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

.field liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

.field onlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const/high16 v0, 0x41200000    # 10.0f

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 24
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 33
    const/4 v2, 0x3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    .line 42
    .line 43
    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->onlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->onlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const/4 v0, 0x1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 81
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120c5a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "liveLayer"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 20
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 4
    .line 5
    const-string v0, "login"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 23
    :cond_0
    return-void
.end method

.method protected updateTitle(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;->getCount()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    const/4 v2, 0x2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    .line 22
    :goto_1
    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;->getCount()I

    .line 28
    move-result v4

    .line 29
    add-int/2addr v4, v2

    .line 30
    .line 31
    div-int/lit8 v4, v4, 0x3

    .line 32
    add-int/2addr v4, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v4, v2

    .line 35
    .line 36
    :goto_2
    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->getCount()I

    .line 42
    move-result v5

    .line 43
    add-int/2addr v5, v2

    .line 44
    .line 45
    div-int/lit8 v5, v5, 0x3

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    move v1, v2

    .line 49
    :cond_3
    add-int/2addr v5, v1

    .line 50
    add-int/2addr v4, v5

    .line 51
    .line 52
    .line 53
    :cond_4
    const v1, 0x7f120c5a

    .line 54
    .line 55
    if-ge p1, v3, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_5
    if-lt p1, v4, :cond_6

    .line 62
    .line 63
    .line 64
    const p1, 0x7f120e08

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_6
    if-eqz v0, :cond_7

    .line 71
    .line 72
    .line 73
    const p1, 0x7f120e11

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :cond_7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 81
    :goto_3
    return-void
.end method
