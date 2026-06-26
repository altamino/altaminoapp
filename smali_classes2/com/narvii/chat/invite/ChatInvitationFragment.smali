.class public final Lcom/narvii/chat/invite/ChatInvitationFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatInvitationFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatInvitationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatInvitationFragment.kt\ncom/narvii/chat/invite/ChatInvitationFragment\n*L\n1#1,287:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private accountService:Lcom/narvii/account/AccountService;

.field private config:Lcom/narvii/config/ConfigService;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private invitationContainer:Landroid/view/View;

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$onChatJoined(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->onChatJoined(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public static final synthetic access$setInvitationContainer$p(Lcom/narvii/chat/invite/ChatInvitationFragment;Landroid/view/View;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    return-void
.end method

.method private final onChatJoined(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const v2, 0x7f09002c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0908cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 v0, 0x1

    .line 234
    iput v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 235
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 237
    invoke-direct {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->recordRecentChat()V

    return-void

    .line 233
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final recordRecentChat()V
    .locals 4

    const-string v0, "globalChat"

    .line 241
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    const-string v1, "config"

    .line 242
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final checkCommunityAvailability(ZZ)Z
    .locals 4

    const-string v0, "config"

    .line 247
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 248
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    .line 250
    new-instance v3, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Z)V

    .line 249
    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const-string p1, "globalChatHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0908cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 218
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    new-instance v4, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;

    invoke-direct {v4, p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment$doRequestToJoinChat$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void

    :cond_3
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 94
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringParam(\"id\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hide()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public final isReadyToShow(Lcom/narvii/model/ChatThread;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 111
    iget v1, p1, Lcom/narvii/model/ChatThread;->condition:I

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    iget v1, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    move-result v1

    if-nez v1, :cond_1

    iget p1, p1, Lcom/narvii/model/ChatThread;->status:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0905bf

    if-ne v1, v2, :cond_1

    .line 169
    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f010010

    const-string v1, "customFinishAnimIn"

    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f010011

    const-string v1, "customFinishAnimOut"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "__fromGlobalChat"

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "__community"

    .line 175
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f01000e

    const v1, 0x7f01000f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const-string v1, "Others"

    .line 180
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "AcceptButton"

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-string v1, "config"

    .line 189
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 190
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    const-string v2, "community"

    .line 191
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 192
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    const-string v3, "affiliations"

    .line 193
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/AffiliationsService;

    if-eqz v2, :cond_2

    .line 194
    iget v2, v2, Lcom/narvii/model/Community;->joinType:I

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    new-instance p1, Lcom/narvii/community/request/CommunityRequestHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/request/CommunityRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 197
    new-instance v2, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment$onClick$2;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {p1, v1, v2}, Lcom/narvii/community/request/CommunityRequestHelper;->checkWhetherUserIsJoined(ILcom/narvii/util/Callback;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f09002c

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->checkCommunityAvailability(ZZ)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 207
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->doRequestToJoinChat(Lcom/narvii/model/ChatThread;)V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    const-string p1, "config"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"config\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->config:Lcom/narvii/config/ConfigService;

    const-string p1, "account"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 64
    new-instance p1, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/ChatInvitationFragment$onCreate$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b028e

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "requireAccountReceiver"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 87
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->_$_clearFindViewByIdCache()V

    return-void

    .line 84
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 83
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInvitationFragment;->isReadyToShow(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Lcom/narvii/chat/invite/ChatInvitationFragment$onThreadChanged$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/invite/ChatInvitationFragment$onThreadChanged$1;-><init>(Lcom/narvii/chat/invite/ChatInvitationFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->hide()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0905bf

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    .line 77
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const p2, 0x7f09002c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_2
    const-string p1, "requireAccountReceiver"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2
.end method

.method public final show()V
    .locals 10

    .line 115
    invoke-virtual {p0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Lcom/narvii/chat/invite/ChatInvitationFragment;->isReadyToShow(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 117
    :cond_0
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    const-string v4, "context!!"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    const v5, 0x7f0901ce

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_16

    check-cast v2, Lcom/narvii/chat/MultiAvatarView;

    .line 120
    iget-object v5, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v5, :cond_2

    const v6, 0x7f0901e0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_15

    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 121
    iget-object v6, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v6, :cond_3

    const v7, 0x7f090b08

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_14

    check-cast v6, Landroid/widget/TextView;

    .line 122
    iget-object v7, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v7, :cond_4

    const v8, 0x7f09002c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    if-eqz v7, :cond_13

    check-cast v7, Landroid/widget/Button;

    .line 124
    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_5

    .line 125
    invoke-virtual {v2, v1}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 126
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_6
    const/16 v1, 0x8

    const/4 v8, 0x0

    if-eqz v5, :cond_8

    .line 127
    iget-object v9, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-nez v9, :cond_7

    const/16 v9, 0x8

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    if-eqz v2, :cond_a

    .line 128
    iget-object v5, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-nez v5, :cond_9

    const/4 v1, 0x0

    :cond_9
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    :cond_a
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 133
    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0x7f0f0218

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    if-ne v2, v1, :cond_d

    const v0, 0x7f0f0216

    .line 134
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    const/4 v1, 0x2

    if-ne v2, v1, :cond_e

    const v0, 0x7f0f0217

    .line 135
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 136
    :cond_e
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/NVText;->removeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v6, :cond_f

    .line 138
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    if-eqz v7, :cond_10

    const v0, 0x7f0f01d3

    .line 140
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    .line 141
    :cond_10
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInvitationFragment;->invitationContainer:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_11

    .line 143
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_11
    return-void

    .line 130
    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 122
    :cond_13
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_14
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_15
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_16
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_18
    :goto_6
    return-void
.end method
