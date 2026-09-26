.class public final Lcom/narvii/chat/util/MyChatListDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyChatListDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyChatListDelegate.kt\ncom/narvii/chat/util/MyChatListDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,271:1\n1855#2,2:272\n37#3,2:274\n*S KotlinDebug\n*F\n+ 1 MyChatListDelegate.kt\ncom/narvii/chat/util/MyChatListDelegate\n*L\n75#1:272,2\n193#1:274,2\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adapter:Lcom/narvii/list/NVAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatService:Lcom/narvii/chat/core/ChatService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curUser:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final host:Lcom/narvii/chat/util/IMyChatList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isDarkTheme:Z

.field private final isRecentChat:Z

.field private final updateList:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;Z)V
    .locals 7
    .param p1    # Lcom/narvii/chat/util/IMyChatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V
    .locals 1
    .param p1    # Lcom/narvii/chat/util/IMyChatList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    iput-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    iput-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    iput-object p4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    iput-boolean p5, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    const-string p1, "chat"

    .line 2
    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "getService(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    const-string p1, "account"

    .line 3
    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 4
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 5
    new-instance p1, Lcom/narvii/chat/util/o;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/o;-><init>(Lcom/narvii/chat/util/MyChatListDelegate;)V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

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

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;Z)V

    return-void
.end method

.method public static synthetic a([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick$lambda$1([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/util/MyChatListDelegate;->updateList$lambda$4(Lcom/narvii/chat/util/MyChatListDelegate;)V

    return-void
.end method

.method public static synthetic onLongClick$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroidx/fragment/app/FragmentManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x2

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    const/4 p4, 0x1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroidx/fragment/app/FragmentManager;Z)V

    .line 14
    return-void
.end method

.method private static final onLongClick$lambda$1([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p6, "$itemIds"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p6, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p6, "$chatThread"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p6, "$chatRequestHelper"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p6}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    aget p0, p0, p7

    .line 23
    .line 24
    .line 25
    sparse-switch p0, :sswitch_data_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :sswitch_0
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    sget-object p3, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 34
    .line 35
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 36
    .line 37
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p5}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :sswitch_1
    iget-object p5, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 44
    .line 45
    if-eqz p5, :cond_1

    .line 46
    .line 47
    .line 48
    const p6, 0x7f12027b

    .line 49
    .line 50
    if-ne p6, p0, :cond_0

    .line 51
    .line 52
    sget-object p0, Lcom/narvii/logging/ActSemantic;->pin:Lcom/narvii/logging/ActSemantic;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    sget-object p0, Lcom/narvii/logging/ActSemantic;->unpin:Lcom/narvii/logging/ActSemantic;

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p5, p2, p0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 59
    .line 60
    :cond_1
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p4, p0, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :sswitch_2
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 71
    .line 72
    sget-object p5, Lcom/narvii/logging/ActSemantic;->unread:Lcom/narvii/logging/ActSemantic;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2, p5}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 76
    .line 77
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p4, p0, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :sswitch_3
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 88
    .line 89
    sget-object p5, Lcom/narvii/logging/ActSemantic;->read:Lcom/narvii/logging/ActSemantic;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2, p5}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 93
    .line 94
    iget-object p0, p1, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4, p0, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 102
    :goto_1
    return-void

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :sswitch_data_0
    .sparse-switch
        0x7f120261 -> :sswitch_3
        0x7f120262 -> :sswitch_2
        0x7f12027b -> :sswitch_1
        0x7f120289 -> :sswitch_1
        0x7f1203a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic onNotification$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/notification/Notification;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    .line 9
    return-void
.end method

.method public static synthetic openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    move-object p2, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    move-object p3, v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final updateList$lambda$4(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "adapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    const-string v2, "createView(...)"

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0d00ed

    .line 23
    .line 24
    const-string v3, "plain"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, p4, p3, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    const v0, 0x7f0d00ea

    .line 38
    .line 39
    const-string v3, "hangout"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, p4, p3, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    const v0, 0x7f0d00e8

    .line 53
    .line 54
    const-string v3, "group"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p4, p3, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 64
    .line 65
    :goto_0
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    .line 71
    const/4 p4, 0x0

    .line 72
    .line 73
    if-nez p3, :cond_4

    .line 74
    .line 75
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    .line 76
    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget v0, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v0, p4

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p3, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 89
    move-result-object p3

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_3
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    :goto_2
    iput-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    .line 99
    .line 100
    :cond_4
    iget-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 101
    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {p3, v0}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2, p3, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    .line 116
    .line 117
    iget-boolean p3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    .line 118
    .line 119
    if-eqz p3, :cond_6

    .line 120
    .line 121
    .line 122
    const v0, 0x10ffffff

    .line 123
    goto :goto_4

    .line 124
    .line 125
    .line 126
    :cond_6
    const v0, -0x70707

    .line 127
    .line 128
    :goto_4
    if-eqz p3, :cond_7

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    const/4 p4, -0x1

    .line 131
    .line 132
    :goto_5
    if-eqz p2, :cond_8

    .line 133
    .line 134
    iget-boolean p2, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 135
    .line 136
    if-ne p2, v1, :cond_8

    .line 137
    goto :goto_6

    .line 138
    :cond_8
    move v0, p4

    .line 139
    .line 140
    .line 141
    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    return-object p1
.end method

.method public final getCurUser()Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/chat/util/IMyChatList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    return-object v0
.end method

.method public final getUpdateList$Amino_bundle()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isDarkTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isDarkTheme:Z

    return v0
.end method

.method public final isRecentChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->isRecentChat:Z

    return v0
.end method

.method public final onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroidx/fragment/app/FragmentManager;Z)V
    .locals 8
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "chatThread"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v5, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v5, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    new-array v2, v1, [I

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    .line 32
    const v0, 0x7f120262

    .line 33
    .line 34
    aput v0, v2, v3

    .line 35
    .line 36
    iget-object v4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    const v0, 0x7f120261

    .line 52
    .line 53
    aput v0, v2, v3

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    const/4 v0, 0x1

    .line 68
    .line 69
    if-eqz p4, :cond_3

    .line 70
    .line 71
    iget-boolean p4, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 72
    .line 73
    .line 74
    const v4, 0x7f12027b

    .line 75
    .line 76
    .line 77
    const v6, 0x7f120289

    .line 78
    .line 79
    if-eqz p4, :cond_1

    .line 80
    move p4, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move p4, v4

    .line 83
    .line 84
    :goto_1
    aput p4, v2, v0

    .line 85
    .line 86
    iget-object p4, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    iget-boolean v0, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    move v4, v6

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p4, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object p4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v0, 0x2

    .line 104
    .line 105
    .line 106
    :cond_3
    const p4, 0x7f1203a0

    .line 107
    .line 108
    aput p4, v2, v0

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object p4

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 135
    .line 136
    const-string v4, "config"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result p2

    .line 149
    :goto_2
    move v6, p2

    .line 150
    goto :goto_3

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 154
    move-result p2

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :goto_3
    new-array p2, v3, [Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    check-cast p2, [Ljava/lang/CharSequence;

    .line 164
    .line 165
    new-instance v0, Lcom/narvii/chat/util/n;

    .line 166
    move-object v1, v0

    .line 167
    move-object v3, p0

    .line 168
    move-object v4, p1

    .line 169
    move-object v7, p3

    .line 170
    .line 171
    .line 172
    invoke-direct/range {v1 .. v7}, Lcom/narvii/chat/util/n;-><init>([ILcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroidx/fragment/app/FragmentManager;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p4, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    return-void
.end method

.method public final onNewChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 10
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
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v0, :cond_10

    .line 30
    .line 31
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v5, v4

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    const/4 v5, 0x1

    .line 50
    xor-int/2addr v3, v5

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    :cond_1
    iget-boolean v3, p1, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v7, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v7, v4

    .line 72
    .line 73
    :goto_1
    iget-object v8, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v7, v8}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 77
    move-result v3

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    move v3, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move v3, v6

    .line 83
    .line 84
    :goto_2
    iget v7, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 85
    .line 86
    const/16 v8, 0x64

    .line 87
    .line 88
    if-eq v7, v8, :cond_4

    .line 89
    .line 90
    const/16 v8, 0x77

    .line 91
    .line 92
    if-ne v7, v8, :cond_6

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v2, v4

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-static {v7, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    move v2, v5

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    move v2, v6

    .line 114
    .line 115
    :goto_4
    iget-boolean v7, p1, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    .line 116
    .line 117
    if-eqz v7, :cond_7

    .line 118
    .line 119
    iget-object v7, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 120
    .line 121
    iget-object v8, v0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 122
    .line 123
    iget-object v9, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v8, v9}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 127
    move-result v7

    .line 128
    .line 129
    if-eqz v7, :cond_7

    .line 130
    move v7, v5

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move v7, v6

    .line 133
    .line 134
    :goto_5
    if-eqz v7, :cond_9

    .line 135
    .line 136
    iget-object v8, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 137
    .line 138
    iput-object v8, v0, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    goto :goto_6

    .line 142
    .line 143
    :cond_8
    iget-object v8, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 144
    .line 145
    :goto_6
    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 146
    .line 147
    :cond_9
    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 148
    .line 149
    if-eqz v3, :cond_a

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 153
    move-result-object v8

    .line 154
    .line 155
    .line 156
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    check-cast v8, Lcom/narvii/model/ChatMessage;

    .line 159
    .line 160
    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    .line 164
    move-result v8

    .line 165
    .line 166
    if-eqz v8, :cond_a

    .line 167
    .line 168
    iget-object v8, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 169
    .line 170
    iget-object v9, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v9}, Lcom/narvii/chat/util/ChatHelper;->getChannelType(Lcom/narvii/model/ChatMessage;)I

    .line 174
    move-result v9

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v0, v9}, Lcom/narvii/chat/util/ChatHelper;->setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V

    .line 178
    .line 179
    :cond_a
    if-eqz v2, :cond_b

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 183
    move-result-object v8

    .line 184
    .line 185
    .line 186
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    check-cast v8, Lcom/narvii/model/ChatMessage;

    .line 189
    .line 190
    iput-object v8, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 191
    .line 192
    iput-object v4, v8, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 193
    .line 194
    :cond_b
    if-nez v3, :cond_c

    .line 195
    .line 196
    if-nez v7, :cond_c

    .line 197
    .line 198
    if-eqz v2, :cond_d

    .line 199
    .line 200
    :cond_c
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    .line 207
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->updateList:Ljava/lang/Runnable;

    .line 208
    .line 209
    .line 210
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 211
    .line 212
    :cond_d
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 213
    .line 214
    if-eqz v1, :cond_f

    .line 215
    .line 216
    .line 217
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 218
    .line 219
    const-string v2, "mentionedArray"

    .line 220
    .line 221
    .line 222
    filled-new-array {v2}, [Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 230
    .line 231
    if-eqz v2, :cond_f

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 235
    move-result v2

    .line 236
    .line 237
    :goto_7
    if-ge v6, v2, :cond_f

    .line 238
    .line 239
    iget-object v3, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    const-string v7, "uid"

    .line 250
    .line 251
    .line 252
    filled-new-array {v7}, [Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 254
    .line 255
    .line 256
    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object v4

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    move-result v3

    .line 262
    .line 263
    if-eqz v3, :cond_e

    .line 264
    .line 265
    iput-boolean v5, v0, Lcom/narvii/model/ChatThread;->mentionMe:Z

    .line 266
    goto :goto_8

    .line 267
    .line 268
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 269
    goto :goto_7

    .line 270
    .line 271
    :cond_f
    :goto_8
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->accountService:Lcom/narvii/account/AccountService;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatMessage;->isReplyTo(Ljava/lang/String;)Z

    .line 279
    move-result v1

    .line 280
    .line 281
    if-eqz v1, :cond_10

    .line 282
    .line 283
    iput-boolean v5, v0, Lcom/narvii/model/ChatThread;->replyMe:Z

    .line 284
    .line 285
    :cond_10
    if-nez v0, :cond_11

    .line 286
    .line 287
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 288
    .line 289
    .line 290
    invoke-interface {v0, p1}, Lcom/narvii/chat/util/IMyChatList;->onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V

    .line 291
    :cond_11
    return-void
.end method

.method public final onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V
    .locals 7
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    const-string p1, "null cannot be cast to non-null type com.narvii.chat.thread.object.BatchDeleteChatObject"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->getNdcId()I

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p2

    .line 28
    .line 29
    if-ne p1, p2, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->getSelectThreadIdsList()Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result p2

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    check-cast p2, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 56
    .line 57
    instance-of v1, v0, Lcom/narvii/list/NVPagedAdapter;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Lcom/narvii/list/NVPagedAdapter;->removeIdEqualsObjectId(Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_4
    :goto_1
    return-void

    .line 72
    .line 73
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 74
    .line 75
    const-string v1, "config"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 82
    .line 83
    if-eqz p2, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result p2

    .line 88
    goto :goto_2

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 92
    move-result p2

    .line 93
    .line 94
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 95
    .line 96
    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    .line 97
    const/4 v2, 0x2

    .line 98
    const/4 v3, 0x0

    .line 99
    .line 100
    const-string v4, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 101
    .line 102
    if-eqz v1, :cond_a

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 108
    .line 109
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 110
    .line 111
    if-eq v0, p2, :cond_7

    .line 112
    return-void

    .line 113
    .line 114
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 115
    .line 116
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2, v1}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 130
    .line 131
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 142
    move-result v0

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 152
    .line 153
    iput-object p2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 154
    .line 155
    :cond_8
    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 156
    .line 157
    instance-of v0, p2, Lcom/narvii/list/NVPagedAdapter;

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    check-cast p2, Lcom/narvii/list/NVPagedAdapter;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1, v3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 165
    .line 166
    :cond_9
    iget-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 167
    .line 168
    const-string v0, "edit"

    .line 169
    .line 170
    .line 171
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result p2

    .line 173
    .line 174
    if-eqz p2, :cond_a

    .line 175
    .line 176
    iget-object p2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-static {p2, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 182
    .line 183
    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    .line 184
    const/4 v0, 0x1

    .line 185
    .line 186
    if-ne p2, v0, :cond_a

    .line 187
    .line 188
    iget-object p2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-static {p2, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 194
    .line 195
    iget-object p2, p2, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz p2, :cond_a

    .line 198
    .line 199
    const-string v1, "photo://"

    .line 200
    const/4 v5, 0x0

    .line 201
    .line 202
    .line 203
    invoke-static {p2, v1, v3, v2, v5}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 204
    move-result p2

    .line 205
    .line 206
    if-ne p2, v0, :cond_a

    .line 207
    .line 208
    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 209
    .line 210
    .line 211
    invoke-interface {p2}, Lcom/narvii/chat/util/IMyChatList;->refreshList()V

    .line 212
    .line 213
    :cond_a
    iget-object p2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 214
    .line 215
    instance-of v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    .line 216
    .line 217
    if-eqz v0, :cond_10

    .line 218
    .line 219
    const-string v0, "null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject"

    .line 220
    .line 221
    .line 222
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    check-cast p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    .line 225
    .line 226
    iget-object v1, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 227
    .line 228
    if-nez v1, :cond_b

    .line 229
    return-void

    .line 230
    .line 231
    :cond_b
    iget v1, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 232
    .line 233
    if-ne v1, v2, :cond_c

    .line 234
    .line 235
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 239
    return-void

    .line 240
    .line 241
    :cond_c
    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadUpdateObject;->id()Ljava/lang/String;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    .line 248
    invoke-interface {v1, v2}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    if-eqz v1, :cond_10

    .line 252
    .line 253
    iget v2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 254
    .line 255
    if-nez v2, :cond_10

    .line 256
    .line 257
    iget-object v2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 258
    .line 259
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 260
    .line 261
    if-eqz v2, :cond_10

    .line 262
    .line 263
    iget-object v5, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 264
    .line 265
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v6, v2}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 269
    move-result v2

    .line 270
    .line 271
    if-nez v2, :cond_d

    .line 272
    .line 273
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 274
    .line 275
    iget-object v5, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 276
    .line 277
    iget-object v5, v5, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v2

    .line 282
    .line 283
    if-eqz v2, :cond_10

    .line 284
    .line 285
    :cond_d
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 286
    .line 287
    instance-of v2, v2, Lcom/narvii/list/NVPagedAdapter;

    .line 288
    .line 289
    if-eqz v2, :cond_f

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 293
    move-result-object v1

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 299
    .line 300
    iget-object p2, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 301
    .line 302
    iget-object p2, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 303
    .line 304
    iput-object p2, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 305
    .line 306
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 307
    .line 308
    const-string v2, "update"

    .line 309
    .line 310
    .line 311
    invoke-direct {p2, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 312
    .line 313
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 314
    .line 315
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    check-cast v4, Lcom/narvii/chat/core/ThreadUpdateObject;

    .line 321
    .line 322
    iget-object v0, v4, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 323
    .line 324
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 325
    .line 326
    iget-object v4, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v0, v4}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 333
    .line 334
    iget-object v4, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v4, v0}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 338
    move-result v2

    .line 339
    .line 340
    if-eqz v2, :cond_e

    .line 341
    .line 342
    iput-object v0, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 343
    .line 344
    :cond_e
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 345
    .line 346
    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, p2, v3}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 350
    goto :goto_3

    .line 351
    .line 352
    :cond_f
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 353
    .line 354
    .line 355
    invoke-interface {v0, p2}, Lcom/narvii/chat/util/IMyChatList;->onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V

    .line 356
    .line 357
    :cond_10
    :goto_3
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 358
    .line 359
    instance-of p2, p1, Lcom/narvii/model/ChatMessage;

    .line 360
    .line 361
    if-eqz p2, :cond_12

    .line 362
    .line 363
    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 364
    .line 365
    .line 366
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 369
    .line 370
    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->host:Lcom/narvii/chat/util/IMyChatList;

    .line 371
    .line 372
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    invoke-interface {v0, v1}, Lcom/narvii/chat/util/IMyChatList;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    .line 376
    move-result-object v0

    .line 377
    .line 378
    if-eqz v0, :cond_11

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 382
    move-result-object v1

    .line 383
    .line 384
    .line 385
    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 388
    .line 389
    iput-object v1, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isVVChatStartOrEndMessage()Z

    .line 393
    move-result p1

    .line 394
    .line 395
    if-eqz p1, :cond_11

    .line 396
    .line 397
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 398
    .line 399
    iget-object p2, v0, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->getChannelType(Lcom/narvii/model/ChatMessage;)I

    .line 403
    move-result p2

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/util/ChatHelper;->setChatThreadChannelType(Lcom/narvii/model/ChatThread;I)V

    .line 407
    .line 408
    :cond_11
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 412
    :cond_12
    return-void
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;)Z
    .locals 7
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;)Z
    .locals 7
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "chatThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/narvii/model/ChatThread;->mentionMe:Z

    .line 4
    iput-boolean v0, p1, Lcom/narvii/model/ChatThread;->replyMe:Z

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 5
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 6
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 7
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 8
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thread"

    .line 9
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    .line 10
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "__communityId"

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->adapter:Lcom/narvii/list/NVAdapter;

    .line 12
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/chat/util/MyChatListDelegate;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/util/ChatHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setCurUser(Lcom/narvii/model/User;)V
    .locals 0
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate;->curUser:Lcom/narvii/model/User;

    return-void
.end method
