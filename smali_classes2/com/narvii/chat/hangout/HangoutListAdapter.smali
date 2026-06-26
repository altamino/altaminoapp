.class public abstract Lcom/narvii/chat/hangout/HangoutListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "HangoutListAdapter.java"

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

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Public chat"

    .line 37
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    const-string v0, "config"

    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->configService:Lcom/narvii/config/ConfigService;

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

    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    .line 50
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

    .line 74
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->getViewLayoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/hangout/HangoutItem;

    .line 75
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 77
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/PlayList;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 80
    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 81
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 82
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    .line 84
    :cond_1
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_2

    iget p3, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    if-eqz p3, :cond_2

    .line 85
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    :cond_2
    return-object p2
.end method

.method protected getViewLayoutId()I
    .locals 1

    const v0, 0x7f0b00b7

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

    if-eqz p1, :cond_f

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_8

    if-ge v6, v3, :cond_8

    const/4 v8, 0x2

    if-eqz v7, :cond_4

    move v9, v5

    const/4 v5, 0x0

    :cond_1
    if-ge v5, v8, :cond_3

    .line 220
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v1, v10}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_1

    :cond_3
    move v5, v9

    goto :goto_1

    :cond_4
    move v9, v6

    const/4 v6, 0x0

    :cond_5
    if-ge v6, v8, :cond_7

    .line 231
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v1, v10}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v3, :cond_5

    :cond_7
    move v6, v9

    :goto_1
    xor-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    if-ge v6, v3, :cond_9

    :goto_2
    if-ge v6, v3, :cond_9

    .line 244
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v1, v4}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-ge v5, v2, :cond_a

    :goto_3
    if-ge v5, v2, :cond_a

    .line 249
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 252
    :cond_a
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_c

    .line 255
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    if-nez p1, :cond_b

    .line 256
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    goto :goto_4

    .line 258
    :cond_b
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    :goto_4
    if-eqz p2, :cond_e

    .line 263
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    if-nez p1, :cond_d

    .line 264
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    goto :goto_5

    .line 266
    :cond_d
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 270
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    return-void

    .line 205
    :cond_f
    :goto_6
    invoke-virtual {p0}, Lcom/narvii/chat/hangout/HangoutListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 186
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/hangout/HangoutListAdapter;->tryAddToList(Ljava/util/ArrayList;Lcom/narvii/model/ChatThread;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    .line 191
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 141
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 142
    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 143
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 144
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 145
    iget-object p2, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string p4, "id"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "thread"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->source:Ljava/lang/String;

    const-string p4, "Source"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget p2, p3, Lcom/narvii/model/ChatThread;->ndcId:I

    const-string p3, "__communityId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    new-instance p2, Landroid/content/Intent;

    const-string p3, "openHangout"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "intent"

    .line 150
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openHangout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "intent"

    .line 173
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 177
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 159
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, "update"

    if-eq v0, v2, :cond_1

    const-string v2, "edit"

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, v1, p1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_1

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 2

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-nez p2, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p3, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    if-eqz p3, :cond_3

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    .line 112
    :cond_1
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    iget-object v1, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayList;

    if-eqz v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->playListMap:Ljava/util/Map;

    iget-object p3, p3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->userInfoInThread:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 122
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    if-nez p3, :cond_4

    .line 123
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p3, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->userInfoMap:Ljava/util/Map;

    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    :cond_5
    :goto_1
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 130
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    if-nez p2, :cond_6

    .line 131
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/narvii/chat/hangout/HangoutListAdapter;->communityMapping:Ljava/util/Map;

    goto :goto_2

    .line 133
    :cond_6
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 33
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

    .line 55
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method
