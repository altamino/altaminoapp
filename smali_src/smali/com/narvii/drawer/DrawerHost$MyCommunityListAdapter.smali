.class Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCommunityListAdapter"
.end annotation


# instance fields
.field private fakeCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstSetPosition:Z

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 13
    const/4 p2, 0x1

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 16
    .line 17
    iget-object p2, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    .line 18
    .line 19
    iget p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 35
    move-result v0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    :goto_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-ge p1, v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    move-result v1

    .line 58
    .line 59
    if-ge p1, v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 79
    return-object p1

    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 94
    return-object p1

    .line 95
    .line 96
    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 97
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x2

    .line 22
    return p1

    .line 23
    .line 24
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    const/4 p1, 0x3

    .line 28
    return p1

    .line 29
    :cond_3
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/Community;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d01fc

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a06d5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    check-cast p3, Landroid/widget/ImageView;

    .line 28
    .line 29
    instance-of v0, p3, Lcom/narvii/widget/CommunityIconView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    instance-of v0, p3, Lcom/narvii/widget/NVImageView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 52
    .line 53
    .line 54
    const p3, 0x7f0a03ec

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 61
    .line 62
    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 63
    .line 64
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    if-ne v0, p1, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v1, v2

    .line 70
    .line 71
    :goto_1
    if-eqz p3, :cond_4

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    const/16 v2, 0x8

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object p2

    .line 86
    .line 87
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 88
    .line 89
    if-ne p1, v0, :cond_6

    .line 90
    .line 91
    .line 92
    const p1, 0x7f0d01fd

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object p1

    .line 103
    .line 104
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 105
    .line 106
    if-ne p1, v0, :cond_7

    .line 107
    .line 108
    .line 109
    const p1, 0x7f0d0393

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 123
    return-object p1

    .line 124
    .line 125
    :cond_7
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Community;

    .line 7
    .line 8
    iget p1, p3, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    iget p5, p2, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-ne p1, p5, :cond_1

    .line 16
    .line 17
    iget-object p1, p2, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    instance-of p2, p1, Lcom/narvii/app/DrawerActivity;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->closeDrawers()V

    .line 27
    :cond_0
    return v0

    .line 28
    .line 29
    :cond_1
    iget p1, p3, Lcom/narvii/model/Community;->status:I

    .line 30
    .line 31
    const/16 p5, 0x9

    .line 32
    .line 33
    if-ne p1, p5, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f12013d

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f1207e7

    .line 52
    const/4 p3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 59
    return v0

    .line 60
    .line 61
    :cond_2
    new-instance p1, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 62
    .line 63
    iget-object p5, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2, p5}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V

    .line 67
    .line 68
    iput-object p1, p2, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 73
    .line 74
    .line 75
    const p2, 0x7f0a06d5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 82
    .line 83
    .line 84
    const p5, 0x7f0a0b8a

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p4

    .line 89
    .line 90
    check-cast p4, Lcom/narvii/widget/SmoothProgressBar;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3, p2, p4}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    .line 94
    return v0

    .line 95
    .line 96
    :cond_3
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 97
    .line 98
    if-ne p3, v0, :cond_5

    .line 99
    .line 100
    const-class v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    const-string v1, "__communityId"

    .line 107
    const/4 v2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_4
    const/high16 v1, 0x10000000

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v0}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 129
    .line 130
    :goto_0
    const-string/jumbo v0, "statistics"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 137
    .line 138
    const-string v1, "Explore Communities Tab Opened"

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    const-string v1, "Explore Communities Tab Opened Total"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    const-string v1, "Left Side Panel"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 157
    move-result p1

    .line 158
    return p1
.end method

.method onResume()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 34
    sub-long/2addr v2, v4

    .line 35
    .line 36
    cmp-long v0, v0, v2

    .line 37
    .line 38
    if-gez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToPosition()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    .line 9
    .line 10
    if-nez v1, :cond_5

    .line 11
    .line 12
    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    goto :goto_2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v1

    .line 35
    .line 36
    if-lez v1, :cond_4

    .line 37
    move v1, v2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v3

    .line 42
    .line 43
    if-ge v1, v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/model/Community;

    .line 50
    .line 51
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 52
    .line 53
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 54
    .line 55
    iget v4, v4, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    .line 56
    .line 57
    if-ne v3, v4, :cond_1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v1, v2

    .line 63
    .line 64
    :goto_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    add-int/lit8 v3, v1, -0x3

    .line 69
    .line 70
    if-lez v3, :cond_3

    .line 71
    move v1, v3

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 77
    .line 78
    :cond_4
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 79
    :cond_5
    :goto_2
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 6

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    move v2, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/narvii/drawer/DrawerHost;->a(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget v3, p2, Lcom/narvii/model/Community;->id:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    :goto_1
    if-nez v0, :cond_2

    .line 36
    move v3, v1

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_2
    iget v3, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 40
    .line 41
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 42
    add-int/2addr v3, v4

    .line 43
    add-int/2addr v3, v2

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    const v4, 0x7f0a0a29

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_9

    .line 61
    .line 62
    instance-of v4, p1, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    move-object v4, p1

    .line 66
    .line 67
    check-cast v4, Landroid/widget/TextView;

    .line 68
    .line 69
    const/16 v5, 0x9

    .line 70
    .line 71
    if-le v3, v5, :cond_3

    .line 72
    .line 73
    const-string v5, "9+"

    .line 74
    goto :goto_3

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    :cond_4
    if-nez v2, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 87
    .line 88
    :cond_5
    if-lez v3, :cond_7

    .line 89
    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 94
    move-result v2

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    const v3, 0x7f010037

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_7
    if-eqz v2, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 120
    move-result v1

    .line 121
    .line 122
    if-nez v1, :cond_8

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    const v2, 0x7f010039

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    .line 138
    :cond_8
    const/16 v1, 0x8

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    :cond_9
    :goto_4
    if-eqz p3, :cond_b

    .line 144
    .line 145
    if-eqz p2, :cond_b

    .line 146
    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 159
    move-result-wide v0

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 163
    move-result-wide v2

    .line 164
    .line 165
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    .line 166
    sub-long/2addr v2, v4

    .line 167
    .line 168
    cmp-long p1, v0, v2

    .line 169
    .line 170
    if-gez p1, :cond_b

    .line 171
    .line 172
    :cond_a
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->d(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 182
    .line 183
    :cond_b
    if-eqz p2, :cond_c

    .line 184
    .line 185
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 191
    move-result p1

    .line 192
    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->a(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 205
    :cond_c
    return-void
.end method
