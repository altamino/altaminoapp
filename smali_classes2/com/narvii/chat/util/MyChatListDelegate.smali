.class public final Lcom/narvii/chat/util/MyChatListDelegate;
.super Ljava/lang/Object;
.source "MyChatListDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyChatListDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyChatListDelegate.kt\ncom/narvii/chat/util/MyChatListDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,271:1\n1587#2,2:272\n37#3,2:274\n*E\n*S KotlinDebug\n*F\n+ 1 MyChatListDelegate.kt\ncom/narvii/chat/util/MyChatListDelegate\n*L\n75#1,2:272\n193#1,2:274\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final adapter:Lcom/narvii/list/NVAdapter;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private final chatService:Lcom/narvii/chat/core/ChatService;

.field private curUser:Lcom/narvii/model/User;

.field private final host:Lcom/narvii/chat/util/IMyChatList;

.field private final isDarkTheme:Z

.field private final isRecentChat:Z

.field private final updateList:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;Z)V
    .locals 7

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    iput-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    iput-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    iput-object p4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    iput-boolean p5, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    .line 37
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    const-string p2, "chat"

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "adapter.getService(\"chat\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 38
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    const-string p2, "account"

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "adapter.getService(\"account\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 39
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "adapter.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 269
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate$updateList$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/MyChatListDelegate$updateList$1;-><init>(Lcom/narvii/chat/util/MyChatListDelegate;)V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V

    return-void
.end method

.method public static synthetic onLongClick$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 169
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;Z)V

    return-void
.end method

.method public static synthetic onNotification$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/notification/Notification;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 149
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-static {v0, p2}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const v0, 0x7f0b00d7

    const-string v2, "plain"

    .line 52
    invoke-virtual {p1, v0, p4, p3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p3, "adapter.createView(R.lay\u2026nt, convertView, \"plain\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_0
    const v0, 0x7f0b00d4

    const-string v2, "hangout"

    .line 46
    invoke-virtual {p1, v0, p4, p3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p3, "adapter.createView(R.lay\u2026, convertView, \"hangout\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f0b00d2

    const-string v2, "group"

    .line 49
    invoke-virtual {p1, v0, p4, p3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const-string p3, "adapter.createView(R.lay\u2026nt, convertView, \"group\")"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 55
    :goto_0
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    invoke-virtual {p1, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 56
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    const/4 p4, 0x0

    if-nez p3, :cond_4

    .line 57
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p2, :cond_2

    iget v0, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p3

    goto :goto_2

    .line 58
    :cond_3
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p3

    .line 57
    :goto_2
    iput-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    .line 60
    :cond_4
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p3, v0}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    invoke-virtual {p1, p2, p3, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    .line 61
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    if-eqz p3, :cond_6

    const p3, 0x10ffffff

    goto :goto_4

    :cond_6
    const-wide v2, 0xfff8f8f9L

    long-to-int p3, v2

    .line 62
    :goto_4
    iget-boolean v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 p4, -0x1

    :goto_5
    if-eqz p2, :cond_8

    .line 63
    iget-boolean p2, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    if-ne p2, v1, :cond_8

    goto :goto_6

    :cond_8
    move p3, p4

    :goto_6
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-object p1
.end method

.method public final getCurUser()Lcom/narvii/model/User;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/chat/util/IMyChatList;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    return-object v0
.end method

.method public final getUpdateList$Amino_bundle()Ljava/lang/Runnable;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isDarkTheme()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    return v0
.end method

.method public final isRecentChat()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    return v0
.end method

.method public final onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;Z)V
    .locals 8

    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v5, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-direct {v5, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    const/4 v1, 0x3

    new-array v3, v1, [I

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f021f

    aput v0, v3, v2

    .line 177
    iget-object v4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f0f021e

    aput v0, v3, v2

    .line 180
    iget-object v4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    if-eqz p4, :cond_3

    const/4 p4, 0x2

    .line 184
    iget-boolean v4, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    const v6, 0x7f0f0246

    const v7, 0x7f0f0238

    if-eqz v4, :cond_1

    const v4, 0x7f0f0246

    goto :goto_1

    :cond_1
    const v4, 0x7f0f0238

    :goto_1
    aput v4, v3, v0

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v4, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x7f0f0238

    :goto_2
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 p4, 0x1

    :goto_3
    const v0, 0x7f0f0348

    .line 188
    aput v0, v3, p4

    .line 189
    iget-object p4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    const-string v4, "config"

    invoke-virtual {v0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p2, :cond_4

    .line 192
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_4
    const-string p2, "configService"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    :goto_4
    move v6, p2

    new-array p2, v2, [Ljava/lang/CharSequence;

    .line 275
    invoke-interface {v1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, [Ljava/lang/CharSequence;

    .line 193
    new-instance v0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;-><init>(Lcom/narvii/chat/util/MyChatListDelegate;[ILcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p4, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 275
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNewChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 10

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_12

    .line 221
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 222
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-boolean v3, p1, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    if-eqz v2, :cond_2

    iget-object v7, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    iget-object v8, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3, v7, v8}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 229
    :goto_2
    iget v7, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_4

    const/16 v8, 0x77

    if-ne v7, v8, :cond_6

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v4

    :goto_3
    invoke-static {v7, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 230
    :goto_4
    iget-boolean v7, p1, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v8, v0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    iget-object v9, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v7, v8, v9}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_9

    .line 232
    iget-object v8, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iput-object v8, v0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    if-eqz v1, :cond_8

    goto :goto_6

    .line 233
    :cond_8
    iget-object v8, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    :goto_6
    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    :cond_9
    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    if-eqz v3, :cond_b

    .line 236
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v8

    if-eqz v8, :cond_a

    check-cast v8, Lcom/narvii/model/ChatMessage;

    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 237
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 238
    iget-object v8, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v9, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v8, v9}, Lcom/narvii/chat/util/ChatHelper;->getChannelType(Lcom/narvii/model/ChatMessage;)I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lcom/narvii/chat/util/ChatHelper;->setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V

    goto :goto_7

    .line 236
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_7
    if-eqz v2, :cond_d

    .line 242
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v8

    if-eqz v8, :cond_c

    check-cast v8, Lcom/narvii/model/ChatMessage;

    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 243
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    iput-object v4, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    goto :goto_8

    .line 242
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_8
    if-nez v3, :cond_e

    if-nez v7, :cond_e

    if-eqz v2, :cond_f

    .line 246
    :cond_e
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 249
    :cond_f
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_11

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "mentionedArray"

    aput-object v3, v2, v6

    .line 250
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 251
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v2, :cond_11

    .line 252
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_11

    .line 253
    iget-object v4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    const-string/jumbo v9, "uid"

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 254
    iput-boolean v5, v0, Lcom/narvii/model/ChatThread;->mentionMe:Z

    goto :goto_a

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 260
    :cond_11
    :goto_a
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatMessage;->isReplyTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 261
    iput-boolean v5, v0, Lcom/narvii/model/ChatThread;->replyMe:Z

    :cond_12
    if-nez v0, :cond_13

    .line 265
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    invoke-interface {v0, p1}, Lcom/narvii/chat/util/IMyChatList;->onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V

    :cond_13
    return-void
.end method

.method public final onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    .line 73
    check-cast v0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    .line 74
    invoke-virtual {v0}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->getNdcId()I

    move-result p1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 75
    invoke-virtual {v0}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->getSelectThreadIdsList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 272
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVPagedAdapter;

    if-eqz v1, :cond_2

    .line 77
    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v0, p2}, Lcom/narvii/list/NVPagedAdapter;->removeIdEqualsObjectId(Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void

    .line 73
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.chat.thread.`object`.BatchDeleteChatObject"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p2, :cond_7

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_7
    const-string p2, "configService"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    .line 86
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    .line 87
    move-object v1, v0

    check-cast v1, Lcom/narvii/model/ChatThread;

    iget v1, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    if-eq v1, p2, :cond_8

    return-void

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_f

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    check-cast v1, Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object p2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    goto :goto_3

    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    instance-of v0, p2, Lcom/narvii/list/NVPagedAdapter;

    if-eqz v0, :cond_b

    .line 95
    check-cast p2, Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p2, p1, v3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 99
    :cond_b
    iget-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v0, "edit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_d

    move-object v0, p2

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    if-eqz p2, :cond_c

    check-cast p2, Lcom/narvii/model/ChatThread;

    iget-object p2, p2, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz p2, :cond_11

    const/4 v0, 0x0

    const-string v5, "photo://"

    invoke-static {p2, v5, v3, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-ne p2, v1, :cond_11

    .line 101
    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    invoke-interface {p2}, Lcom/narvii/chat/util/IMyChatList;->refreshList()V

    goto :goto_4

    .line 99
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_11
    :goto_4
    iget-object p2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    if-eqz v0, :cond_1a

    const-string v0, "null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject"

    if-eqz p2, :cond_19

    .line 105
    check-cast p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    .line 106
    iget-object v1, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v1, :cond_12

    return-void

    .line 109
    :cond_12
    iget v1, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    if-ne v1, v2, :cond_13

    .line 110
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 113
    :cond_13
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadUpdateObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 115
    iget v2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    if-nez v2, :cond_1a

    iget-object v2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    if-eqz v2, :cond_1a

    .line 116
    iget-object v5, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v5, v6, v2}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 117
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iget-object v5, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v5, v5, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v2, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 118
    :cond_14
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    instance-of v2, v2, Lcom/narvii/list/NVPagedAdapter;

    if-eqz v2, :cond_18

    .line 119
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_17

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 120
    iget-object p2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object p2, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iput-object p2, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 121
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {p2, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 122
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_16

    check-cast v4, Lcom/narvii/chat/core/ThreadUpdateObject;

    iget-object v0, v4, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    iget-object v4, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v4, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v2, v4, v0}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 124
    iput-object v0, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 126
    :cond_15
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v0, p2, v3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_5

    .line 122
    :cond_16
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_17
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_18
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    invoke-interface {v0, p2}, Lcom/narvii/chat/util/IMyChatList;->onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V

    goto :goto_5

    .line 105
    :cond_19
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1a
    :goto_5
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p2, p1, Lcom/narvii/model/ChatMessage;

    if-eqz p2, :cond_1e

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    if-eqz p1, :cond_1d

    .line 135
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 138
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_1b

    check-cast v1, Lcom/narvii/model/ChatMessage;

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 139
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 140
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object p2, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->getChannelType(Lcom/narvii/model/ChatMessage;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/util/ChatHelper;->setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V

    goto :goto_6

    .line 138
    :cond_1b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1c
    :goto_6
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_7

    .line 135
    :cond_1d
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :goto_7
    return-void
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p1, Lcom/narvii/model/ChatThread;->mentionMe:Z

    .line 154
    iput-boolean v0, p1, Lcom/narvii/model/ChatThread;->replyMe:Z

    .line 155
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 157
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "thread"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    .line 160
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "__communityId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setCurUser(Lcom/narvii/model/User;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    return-void
.end method
