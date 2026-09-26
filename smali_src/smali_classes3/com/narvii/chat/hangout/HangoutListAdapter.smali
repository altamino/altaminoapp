.class public abstract Lcom/narvii/chat/hangout/HangoutListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field protected communityMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private configService:Lcom/narvii/config/ConfigService;

.field private playListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field private userInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const-string v0, "Public chat"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 18
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

.method private tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;",
            "Lcom/narvii/model/ChatThread;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Chats"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->getViewLayoutId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/chat/hangout/HangoutItem;

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Lcom/narvii/model/PlayList;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 37
    move-result p3

    .line 38
    .line 39
    if-nez p3, :cond_1

    .line 40
    .line 41
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 55
    .line 56
    :cond_1
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 60
    move-result p3

    .line 61
    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    iget p3, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    if-ne p3, v0, :cond_2

    .line 68
    .line 69
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    .line 70
    .line 71
    if-eqz p3, :cond_2

    .line 72
    .line 73
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/model/Community;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    .line 87
    :cond_2
    return-object p2
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f0d00cd

    return v0
.end method

.method mergeThreadList(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_e

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    move v6, v5

    .line 33
    move v7, v6

    .line 34
    .line 35
    :goto_0
    if-ge v5, v2, :cond_7

    .line 36
    .line 37
    if-ge v6, v3, :cond_7

    .line 38
    const/4 v8, 0x2

    .line 39
    .line 40
    if-eqz v7, :cond_3

    .line 41
    move v9, v4

    .line 42
    .line 43
    :cond_1
    if-ge v9, v8, :cond_6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v10

    .line 48
    .line 49
    check-cast v10, Lcom/narvii/model/ChatThread;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1, v10}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    .line 53
    move-result v10

    .line 54
    .line 55
    if-eqz v10, :cond_2

    .line 56
    .line 57
    add-int/lit8 v9, v9, 0x1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    if-lt v5, v2, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v9, v4

    .line 64
    .line 65
    :cond_4
    if-ge v9, v8, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v10

    .line 70
    .line 71
    check-cast v10, Lcom/narvii/model/ChatThread;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v1, v10}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    .line 75
    move-result v10

    .line 76
    .line 77
    if-eqz v10, :cond_5

    .line 78
    .line 79
    add-int/lit8 v9, v9, 0x1

    .line 80
    .line 81
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    if-lt v6, v3, :cond_4

    .line 84
    .line 85
    :cond_6
    :goto_1
    xor-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_7
    if-ge v6, v3, :cond_8

    .line 89
    .line 90
    :goto_2
    if-ge v6, v3, :cond_8

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Lcom/narvii/model/ChatThread;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v1, v4}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    .line 100
    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_8
    if-ge v5, v2, :cond_9

    .line 105
    .line 106
    :goto_3
    if-ge v5, v2, :cond_9

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    goto :goto_3

    .line 119
    .line 120
    .line 121
    :cond_9
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    .line 122
    .line 123
    if-eqz p3, :cond_b

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    .line 126
    .line 127
    if-nez p1, :cond_a

    .line 128
    .line 129
    new-instance p1, Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 133
    .line 134
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    .line 135
    goto :goto_4

    .line 136
    .line 137
    .line 138
    :cond_a
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 139
    .line 140
    :cond_b
    :goto_4
    if-eqz p2, :cond_d

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 143
    .line 144
    if-nez p1, :cond_c

    .line 145
    .line 146
    new-instance p1, Ljava/util/HashMap;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 150
    .line 151
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 152
    goto :goto_5

    .line 153
    .line 154
    .line 155
    :cond_c
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    .line 159
    return-void

    .line 160
    .line 161
    .line 162
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 12
    .line 13
    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 20
    .line 21
    const-string p4, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    const-string p2, "thread"

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    const-string p2, "Source"

    .line 36
    .line 37
    iget-object p4, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    const-string p2, "__communityId"

    .line 43
    .line 44
    iget p3, p3, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    new-instance p2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string p3, "openHangout"

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    const-string p3, "intent"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 68
    move-result p1

    .line 69
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "openHangout"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "intent"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "new"

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const-string v1, "update"

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const-string v1, "edit"

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2, p1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    if-eqz p3, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 6
    :cond_1
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 7
    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 8
    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    if-nez p3, :cond_4

    .line 10
    new-instance p1, Ljava/util/HashMap;

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_7

    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    if-nez p3, :cond_6

    .line 13
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    goto :goto_2

    .line 14
    :cond_6
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/hangout/HangoutListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
