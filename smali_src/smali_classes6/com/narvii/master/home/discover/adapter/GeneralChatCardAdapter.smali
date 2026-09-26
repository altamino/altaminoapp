.class public Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/ModuleItemCountHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;,
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/topic/model/ModuleItemCountHost;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_CHAT_SIZE:I = 0x4


# instance fields
.field private allItemCount:I

.field private final communityMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configService:Lcom/narvii/config/ConfigService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 20
    .line 21
    const-string p1, "Public chat"

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p1, Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->playListMap:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->userInfoMap:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->communityMapping:Ljava/util/HashMap;

    .line 45
    .line 46
    const-string p1, "config"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "getService(...)"

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 60
    return-void
.end method

.method public static final synthetic access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->communityMapping:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigService$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->playListMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->userInfoMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->allItemCount:I

    .line 3
    return-void
.end method

.method public static safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->allItemCount:I

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    const/16 v3, 0x19

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 18
    return-object v1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "moduleType"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->restrictSize()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->bindViewHolder(Lcom/narvii/model/ChatThread;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d00cd

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
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Landroid/view/View;)V

    .line 30
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
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
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string p2, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Landroid/content/Intent;

    .line 24
    .line 25
    const-string p3, "ndc://login"

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    const-string p4, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 38
    return p2

    .line 39
    .line 40
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 44
    .line 45
    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    move-result-object p1

    .line 50
    move-object p4, p3

    .line 51
    .line 52
    check-cast p4, Lcom/narvii/model/ChatThread;

    .line 53
    .line 54
    iget-object p5, p4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "id"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    const-string p5, "thread"

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    const-string p3, "Source"

    .line 71
    .line 72
    iget-object p5, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    const-string p3, "__communityId"

    .line 78
    .line 79
    iget p4, p4, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    .line 84
    new-instance p3, Landroid/content/Intent;

    .line 85
    .line 86
    const-string p4, "openHangout"

    .line 87
    .line 88
    .line 89
    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    const-string p4, "intent"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const/4 p1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    return p2

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 103
    move-result p1

    .line 104
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    or-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 6
    return-void
.end method

.method public restrictSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
