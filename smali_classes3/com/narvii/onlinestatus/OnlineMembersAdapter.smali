.class public abstract Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "OnlineMembersAdapter.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 40
    invoke-super {p0, v1, p2}, Lcom/narvii/user/list/UserListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/user/list/UserListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    check-cast p1, Lcom/narvii/model/User;

    const-string p3, "ranking"

    .line 55
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/ranking/RankingService;

    const p3, 0x7f090720

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/MoodView;

    .line 57
    sget-object v0, Lcom/narvii/widget/MoodView;->SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p3, v0}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {p3, p1}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    const p3, 0x7f0907ba

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 62
    invoke-virtual {p1}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 61
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b056a

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    or-int/lit16 p1, p1, 0x200

    .line 31
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
