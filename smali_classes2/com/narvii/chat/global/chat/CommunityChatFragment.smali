.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CommunityChatFragment.kt"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendChatRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;,
        Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field public adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field public chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field public chatService:Lcom/narvii/chat/core/ChatService;

.field private communityIconView:Lcom/narvii/widget/CommunityIconView;

.field private communityLayout:Landroid/view/View;

.field private communityTitle:Landroid/widget/TextView;

.field private myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private ndcId:I

.field private needRefreshWhenResume:Z

.field private popupWindow:Landroid/widget/PopupWindow;

.field private final pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

.field private pushService:Lcom/narvii/pushservice/PushService;

.field private recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 463
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    return-void
.end method

.method public static final synthetic access$getNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/CommunityChatFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->needRefreshWhenResume:Z

    return p0
.end method

.method public static final synthetic access$isAnnouncementMsg(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/CommunityChatFragment;Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->needRefreshWhenResume:Z

    return-void
.end method

.method private final isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 473
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    const-string p1, "ndcId"

    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    .line 138
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    if-nez p1, :cond_0

    .line 140
    new-instance v1, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$CreateAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v4, 0x2

    .line 144
    invoke-virtual {v1, v0, v4}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 146
    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    .line 147
    iget-object v4, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v2, Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    iget v3, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 150
    iput-object v2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 152
    new-instance v3, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;

    invoke-direct {v3, p0, v2, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;Lcom/narvii/app/NVContext;)V

    .line 167
    invoke-virtual {v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    new-instance v0, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;

    invoke-direct {v0, v2}, Lcom/narvii/chat/global/chat/RecommendChatAdapter$RecommendHeaderAdapter;-><init>(Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V

    invoke-virtual {v3, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    invoke-virtual {v3, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_1

    .line 173
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorerGlobalChatAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$ExplorChatAdapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-object v3

    .line 147
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected externalOffset()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    mul-int v1, v1, v0

    return v1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatRequestHelper()Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatRequestHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCommunityIconView()Lcom/narvii/widget/CommunityIconView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    return-object v0
.end method

.method public final getCommunityLayout()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCommunityTitle()Landroid/widget/TextView;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMyChatManagePopUp()Lcom/narvii/chat/thread/MyChatManagePopUp;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-object v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myCommunityService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNdcId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 114
    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    if-nez v0, :cond_0

    const-string v0, "Global"

    return-object v0

    :cond_0
    const-string v0, "Community"

    return-object v0
.end method

.method public final getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 124
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->needRefreshWhenResume:Z

    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_1
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushListener:Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;

    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "myCommunityList"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"myCommunityList\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    const-string p1, "ndcId"

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    .line 85
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "context!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 86
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    const-string p1, "chat"

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"chat\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const-string p1, "account"

    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "push"

    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 92
    new-instance p1, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    return-void

    :cond_0
    const-string p1, "chatService"

    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0291

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 254
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "chatMessageDto.chatMessage"

    .line 484
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onRefresh()V
    .locals 3

    .line 259
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 260
    iget v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x2

    .line 187
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 188
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p2, 0x7f0902a3

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    const p2, 0x7f0902c5

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    const p2, 0x7f0902aa

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    const-string p1, "community"

    .line 192
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/Community;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 193
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/model/Community;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_3
    iget p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    if-nez p1, :cond_4

    const p1, 0x7f0b01ee

    .line 205
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090724

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$2;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0b01ec

    .line 212
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903ea

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$3;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p2, 0x7f09040b

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$4;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_6
    :goto_0
    sget p1, Lcom/narvii/amino/R$id;->setting:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$5;-><init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    const-string p1, "adapter"

    .line 188
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public refreshRecommendChat()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecommendChatAdapter;->refreshWithRateControl()V

    :cond_0
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAdapter(Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->adapter:Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    return-void
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setChatRequestHelper(Lcom/narvii/chat/util/ChatRequestHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    return-void
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setCommunityIconView(Lcom/narvii/widget/CommunityIconView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    return-void
.end method

.method public final setCommunityLayout(Landroid/view/View;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityLayout:Landroid/view/View;

    return-void
.end method

.method public final setCommunityTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->communityTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setMyChatManagePopUp(Lcom/narvii/chat/thread/MyChatManagePopUp;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setNdcId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->ndcId:I

    return-void
.end method

.method public final setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method
