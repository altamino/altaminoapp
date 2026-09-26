.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/chat/util/IMyChatList;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curUser:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V
    .locals 10
    .param p1    # Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    move p2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p2, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 22
    .line 23
    const-string p2, "account"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 57
    move-result-object p2

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 66
    move-result v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    :goto_1
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p2, v1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    .line 80
    .line 81
    :goto_2
    new-instance p2, Lcom/narvii/chat/util/MyChatListDelegate;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getConfig()Lcom/narvii/config/ConfigService;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 89
    move-result p1

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    move v5, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    move v5, v1

    .line 95
    .line 96
    :goto_3
    iget-object v6, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    .line 97
    const/4 v7, 0x0

    .line 98
    .line 99
    const/16 v8, 0x10

    .line 100
    const/4 v9, 0x0

    .line 101
    move-object v2, p2

    .line 102
    move-object v3, p0

    .line 103
    move-object v4, p0

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/k;)V

    .line 107
    .line 108
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 109
    return-void
.end method

.method public static synthetic m(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->onItemClick$lambda$1$lambda$0(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method private static final onItemClick$lambda$1$lambda$0(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->selectChat(Lcom/narvii/model/ChatThread;)V

    .line 11
    return-void
.end method

.method private final selectChat(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 42
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/chat/thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    const-string v2, "joined-me"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 25
    .line 26
    const-string v2, "ndcId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v0, "build(...)"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-object p1
.end method

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_0
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ChatRoomList"

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurUser()Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    const v0, 0x7f0d00eb

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a0294

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Landroid/view/ViewGroup;

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p0, p1, v1, p2}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object p3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object p3, v1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    goto :goto_3

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Landroid/view/ViewGroup;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    move-result v2

    .line 61
    .line 62
    if-lez v2, :cond_3

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    move-result-object p2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object p2, v1

    .line 70
    .line 71
    :goto_2
    iget-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_3
    const p2, 0x7f0a0cc5

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    check-cast p2, Landroid/widget/ImageView;

    .line 86
    .line 87
    iget-object p3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {p3}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    check-cast p3, Ljava/lang/Iterable;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-static {p3, v1}, Lkotlin/collections/t;->Z(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    .line 108
    const p1, 0x7f0805b7

    .line 109
    goto :goto_4

    .line 110
    .line 111
    .line 112
    :cond_6
    const p1, 0x7f0805b6

    .line 113
    .line 114
    .line 115
    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    return-object v0
.end method

.method public final getL$Amino_bundle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1
.end method

.method public final getMyChatListDelegate()Lcom/narvii/chat/util/MyChatListDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getTHREAD_COMPARATOR()Ljava/util/Comparator;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .line 19
    const-string v1, "ChatBatchDeletionFragment"

    .line 20
    .line 21
    const-string v2, "notifyDataSetChanged: failed to sort thread list"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 10
    .line 11
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 10
    move-result-object p1

    .line 11
    move-object p2, p3

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 35
    move-result-object p4

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    const p2, 0x7f12107c

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 57
    .line 58
    .line 59
    const p2, 0x7f1201e2

    .line 60
    const/4 p4, 0x0

    .line 61
    .line 62
    .line 63
    const p5, -0xb56f1e

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/chat/global/chat/g;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, p3}, Lcom/narvii/chat/global/chat/g;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const p3, 0x7f1212a7

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3, p2, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->selectChat(Lcom/narvii/model/ChatThread;)V

    .line 85
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 86
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "message"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 7
    .line 8
    const-string v2, "ndcId"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ThreadUpdateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "updateObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "message"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x100

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V

    .line 27
    :goto_0
    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x100

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V

    .line 22
    :goto_0
    return-void
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method

.method public final setCurUser(Lcom/narvii/model/User;)V
    .locals 0
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    return-void
.end method

.method public final setL$Amino_bundle(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-void
.end method

.method public final setMyChatListDelegate(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/util/MyChatListDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method
