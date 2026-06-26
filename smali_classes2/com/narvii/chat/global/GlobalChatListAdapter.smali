.class public abstract Lcom/narvii/chat/global/GlobalChatListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "GlobalChatListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/global/CategoryThreadResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatListAdapter.kt\ncom/narvii/chat/global/GlobalChatListAdapter\n*L\n1#1,117:1\n*E\n"
.end annotation


# instance fields
.field private final chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private final configService:Lcom/narvii/config/ConfigService;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private final playlistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
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
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "content_language"

    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService<ContentLa\u2026vice>(\"content_language\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->communityMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->userInfoMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->playlistMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    const-string v0, "config"

    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"config\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->configService:Lcom/narvii/config/ConfigService;

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method

.method private final handleOtherCommunityChat(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V
    .locals 2

    .line 96
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->getDeepLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "clearTask"

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "customFinishAnimIn"

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "customFinishAnimOut"

    .line 104
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_0
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz p2, :cond_1

    .line 113
    iget-object p2, p2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 114
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    :goto_1
    return-void
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

    .line 43
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected final getChatLaunchHelper()Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

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

    const v0, 0x7f0b00b7

    .line 59
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/hangout/HangoutItem;

    if-eqz p1, :cond_1

    .line 60
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 61
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/PlayList;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V

    .line 62
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_0

    iget p3, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 63
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->communityMap:Ljava/util/HashMap;

    iget v0, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p2, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setCommunityInfo(Lcom/narvii/model/Community;)V

    .line 65
    :cond_0
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/chat/hangout/HangoutItem;->setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V

    const-string p1, "cell"

    .line 66
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 60
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 79
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->communityMap:Ljava/util/HashMap;

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/ChatThread;

    iget v2, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 82
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 83
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v2

    .line 85
    iget v3, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    if-eq v2, v3, :cond_0

    .line 86
    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->handleOtherCommunityChat(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->chatLaunchHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/chat/global/GlobalChatHelper;->launchChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V

    .line 92
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_1

    .line 72
    iget-object p1, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->communityMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/narvii/chat/global/CategoryThreadResponse;->getOnlineUserInfo()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/narvii/chat/global/CategoryThreadResponse;->getPlayList()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 30
    check-cast p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/global/GlobalChatListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/global/CategoryThreadResponse;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/narvii/chat/global/CategoryThreadResponse;

    return-object v0
.end method

.method protected final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method
