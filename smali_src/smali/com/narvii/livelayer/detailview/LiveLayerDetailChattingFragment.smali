.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, "Live Layer (Chats)"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->createDefaultAdapter()Lcom/narvii/list/MergeAdapter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;

    .line 39
    .line 40
    .line 41
    const v1, 0x7f12112d

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->addSubViewAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-object p1
.end method

.method protected getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/livelayer/category/ChatCategoryConfig;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/livelayer/category/ChatCategoryConfig;-><init>()V

    .line 6
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "live_layer_chatting"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "Source"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "Speed Dial"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string/jumbo p1, "statistics"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 32
    .line 33
    const-string v1, "Live Layer - Chats Page"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "Live Layer Chats Page"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 47
    :cond_1
    return-void
.end method
