.class public final Lcom/narvii/chat/global/GlobalChatHelper;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatHelper.kt\ncom/narvii/chat/global/GlobalChatHelper\n*L\n1#1,287:1\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private community:Lcom/narvii/model/Community;

.field private final context:Lcom/narvii/app/NVContext;

.field private final notificationService:Lcom/narvii/notification/NotificationCenter;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 40
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 41
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "affiliations"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 42
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->apiService:Lcom/narvii/util/http/ApiService;

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->notificationService:Lcom/narvii/notification/NotificationCenter;

    const-string p1, "Global Chats"

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 62
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    const-string v1, "__community"

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-static {p1, v1}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 65
    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->community:Lcom/narvii/model/Community;

    :cond_2
    return-void
.end method

.method public static final synthetic access$getNotificationService$p(Lcom/narvii/chat/global/GlobalChatHelper;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->notificationService:Lcom/narvii/notification/NotificationCenter;

    return-object p0
.end method

.method public static final synthetic access$innerJoinCommunity(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    return-void
.end method

.method public static final synthetic access$joinChat(Lcom/narvii/chat/global/GlobalChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->joinChat(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private final innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/narvii/chat/global/GlobalChatHelper;->isInVisitorMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPreJoinCommunity(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 173
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x0

    .line 174
    new-instance v3, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;-><init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;Z)V

    :cond_1
    return-void
.end method

.method private final isInVisitorMode()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isInVisitorMode()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final joinChat(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/member/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;-><init>(Lcom/narvii/chat/global/GlobalChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "JoinCommunityDialog"

    invoke-direct {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f075b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.context.getStrin\u2026eadline_join_amino_first)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 213
    invoke-static {p2}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f075c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.context.getStrin\u2026join_amino_first_to_chat)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f075d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.context.getStrin\u2026ino_first_to_join_vvchat)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    .line 216
    :cond_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0193

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, -0x444445

    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$1;

    invoke-direct {v1, v0}, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f0aa0

    .line 220
    new-instance p2, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$2;

    invoke-direct {p2, v0, p3}, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$2;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 224
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method public final checkCommunityJoined(ILcom/narvii/util/Callback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 258
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper$checkCommunityJoined$1;

    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatHelper$checkCommunityJoined$1;-><init>(Lcom/narvii/util/Callback;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "membership"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 272
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 275
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return v1

    .line 270
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 279
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 280
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;

    invoke-direct {p1, p3}, Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;-><init>(Lcom/narvii/util/Callback;)V

    invoke-direct {p0, v1, v1, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final communityDetailIntent(Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 229
    :cond_1
    :goto_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v2

    .line 234
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x65

    const-string v5, "joinOnly"

    const-string v6, "Source"

    const/4 v7, 0x1

    if-ne v3, v4, :cond_3

    .line 233
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 236
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/description"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "standalone"

    .line 239
    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "clearTask"

    .line 242
    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "__forwardInitTaskActivity"

    const/4 p2, 0x0

    .line 243
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v0

    .line 248
    :cond_3
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 249
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final isCommunityJoined(I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final launchChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V
    .locals 13

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 70
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 71
    iget v2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 72
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    .line 74
    :cond_0
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->hasLiveEvents()Z

    move-result v1

    const-string v2, "__fromGlobalChat"

    const-string v3, "__hideDrawer"

    const-string v4, "__community"

    const-string v5, "__communityId"

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    .line 78
    new-instance v7, Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v7, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 79
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_2

    .line 81
    iget v0, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v12, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v12, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-virtual {v12, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v12, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v9

    iget-object v10, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 88
    :cond_3
    const-class v1, Lcom/narvii/chat/ChatFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 89
    iget-object v7, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v8, "id"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 91
    iget v7, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_4
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper;->source:Ljava/lang/String;

    return-void
.end method

.method public final tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    return p1
.end method

.method public final tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    return p1
.end method

.method public final tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 140
    invoke-interface {p5}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onCheckLoginFailed()V

    :cond_0
    return v1

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->isCommunityJoined(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 150
    invoke-interface {p5}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->getActionRTCType()I

    move-result v2

    .line 151
    :cond_3
    new-instance p3, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;

    invoke-direct {p3, p0, p1, p5}, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;-><init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    invoke-direct {p0, p2, v2, p3}, Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-direct {p0, p1, p5}, Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    :cond_5
    :goto_0
    return v1
.end method
