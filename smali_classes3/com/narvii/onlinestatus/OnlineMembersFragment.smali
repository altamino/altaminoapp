.class public Lcom/narvii/onlinestatus/OnlineMembersFragment;
.super Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.source "OnlineMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;,
        Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;
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

    .line 29
    invoke-direct {p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 71
    new-instance p1, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    .line 73
    new-instance p1, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 75
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 76
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 78
    new-instance v1, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    iput-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->onlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    .line 79
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v1, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 80
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->onlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;

    invoke-virtual {v1, p1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 82
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 83
    iget-object v2, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineHeaderAdapter;-><init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 87
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0b56

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "liveLayer"

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 313
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method protected updateTitle(I)V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 48
    :goto_1
    iget-object v4, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v4}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v2

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    .line 51
    :goto_2
    iget-object v5, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    if-eqz v5, :cond_4

    .line 52
    invoke-virtual {v5}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x3

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    :cond_3
    add-int/2addr v5, v1

    add-int/2addr v4, v5

    :cond_4
    const v1, 0x7f0f0b56

    if-ge p1, v3, :cond_5

    .line 56
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_3

    :cond_5
    if-lt p1, v4, :cond_6

    const p1, 0x7f0f0ce0

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    const p1, 0x7f0f0ce9

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_3

    .line 63
    :cond_7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_3
    return-void
.end method
