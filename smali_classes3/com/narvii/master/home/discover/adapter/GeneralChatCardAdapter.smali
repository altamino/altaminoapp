.class public Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "GeneralChatCardAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/ModuleItemCountHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;,
        Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralChatCardAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralChatCardAdapter.kt\ncom/narvii/master/home/discover/adapter/GeneralChatCardAdapter\n*L\n1#1,181:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;

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
.end field

.field private final configService:Lcom/narvii/config/ConfigService;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;

.field private final playListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    const-string p1, "Public chat"

    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->playListMap:Ljava/util/HashMap;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->userInfoMap:Ljava/util/HashMap;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->communityMapping:Ljava/util/HashMap;

    const-string p1, "config"

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getService(\"config\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public static final synthetic access$getAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->allItemCount:I

    return p0
.end method

.method public static final synthetic access$getCommunityMapping$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->communityMapping:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getConfigService$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method public static final synthetic access$getPlayListMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->playListMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getUserInfoMap$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->userInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->allItemCount:I

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->allItemCount:I

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
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

    .line 63
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    const/16 v1, 0x19

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    .line 64
    new-instance v1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;

    if-eqz p1, :cond_0

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-object v1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "module.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->restrictSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;->bindViewHolder(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00b7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 76
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 78
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string p3, "ndc://login"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p1, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return p2

    .line 83
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 84
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 85
    move-object p4, p3

    check-cast p4, Lcom/narvii/model/ChatThread;

    iget-object p5, p4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "thread"

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p3, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    const-string p5, "Source"

    invoke-virtual {p1, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget p3, p4, Lcom/narvii/model/ChatThread;->ndcId:I

    const-string p4, "__communityId"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    new-instance p3, Landroid/content/Intent;

    const-string p4, "openHangout"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "intent"

    .line 90
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return p2

    .line 94
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    .line 144
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public restrictSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;->source:Ljava/lang/String;

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
