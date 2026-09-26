.class Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChatListAdapter"
.end annotation


# static fields
.field private static final THREAD_VIEW_TYPE_GROUP:I = 0x1

.field private static final THREAD_VIEW_TYPE_PUBLIC:I = 0x2

.field private static final THREAD_VIEW_TYPE_SINGLE:I


# instance fields
.field chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

.field curUser:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->u(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->curUser:Lcom/narvii/model/User;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;Z)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 24
    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;[ILjava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->lambda$onLongClick$0([ILjava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onLongClick$0([ILjava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    aget p1, p1, p4

    .line 3
    .line 4
    .line 5
    sparse-switch p1, :sswitch_data_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->delete(Lcom/narvii/model/ChatThread;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->processPin(Lcom/narvii/model/ChatThread;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->markUnread(Lcom/narvii/model/ChatThread;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->markRead(Lcom/narvii/model/ChatThread;)V

    .line 38
    :goto_0
    return-void

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :sswitch_data_0
    .sparse-switch
        0x7f120261 -> :sswitch_3
        0x7f120262 -> :sswitch_2
        0x7f12027b -> :sswitch_1
        0x7f120289 -> :sswitch_1
        0x7f1203a0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->u(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    move-result v0

    .line 48
    return v0

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result v0

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge p1, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->getErrorMessageValue()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 58
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->v(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    const/4 p1, 0x3

    .line 27
    return p1

    .line 28
    .line 29
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    const/4 p1, 0x4

    .line 33
    return p1

    .line 34
    .line 35
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    const/4 p1, 0x5

    .line 39
    return p1

    .line 40
    :cond_3
    const/4 p1, -0x1

    .line 41
    return p1
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItemViewType(I)I

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-ne p1, v1, :cond_0

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0d00ea

    .line 23
    .line 24
    const-string v1, "hangout"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    if-nez p1, :cond_1

    .line 34
    .line 35
    .line 36
    const p1, 0x7f0d00ed

    .line 37
    .line 38
    const-string v1, "plain"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    if-ne p1, v3, :cond_3

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0d00e8

    .line 51
    .line 52
    const-string v1, "group"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/chat/thread/ThreadListItem;

    .line 59
    .line 60
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->w(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/core/ChatService;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    iget-object p3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->curUser:Lcom/narvii/model/User;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, p2, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    .line 76
    .line 77
    iget-boolean p2, v0, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    const-string p2, "#F8F8F9"

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    const-string p2, "#FFFFFF"

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    move-result p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    return-object p1

    .line 93
    :cond_3
    return-object v2

    .line 94
    .line 95
    :cond_4
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 96
    .line 97
    if-ne v0, p1, :cond_5

    .line 98
    .line 99
    .line 100
    const p1, 0x7f0d05e2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    .line 107
    :cond_5
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 108
    .line 109
    if-ne v0, p1, :cond_6

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v3}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    .line 123
    return-object p1

    .line 124
    .line 125
    :cond_6
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 126
    .line 127
    if-ne v0, p1, :cond_7

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/chat/service/MyChatListService;->errorMessage()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :cond_7
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public isListEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->u(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->isEnd()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->A(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->A(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->updateManageButtonStatus()V

    .line 21
    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->onAttach()V

    .line 13
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->errorRetry()V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->chatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 8
    .line 9
    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    const-string p4, "My chats"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2, p4}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;)Z

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    if-eqz p5, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a0547

    .line 26
    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->E(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 36
    .line 37
    if-ne p3, v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 43
    move-result-object p1

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    .line 48
    return v1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 14
    move-object p2, p3

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    .line 20
    move-result p1

    .line 21
    const/4 p4, 0x3

    .line 22
    .line 23
    new-array p4, p4, [I

    .line 24
    .line 25
    new-instance p5, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    .line 34
    const p1, 0x7f120262

    .line 35
    .line 36
    aput p1, p4, v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    const p1, 0x7f120261

    .line 50
    .line 51
    aput p1, p4, v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    :goto_0
    iget-boolean p1, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 63
    .line 64
    .line 65
    const p2, 0x7f12027b

    .line 66
    .line 67
    .line 68
    const v1, 0x7f120289

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    move v2, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v2, p2

    .line 74
    :goto_1
    const/4 v3, 0x1

    .line 75
    .line 76
    aput v2, p4, v3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    move p2, v1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v2, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 p1, 0x2

    .line 90
    .line 91
    .line 92
    const p2, 0x7f1203a0

    .line 93
    .line 94
    aput p2, p4, p1

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    new-array p2, v0, [Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, [Ljava/lang/CharSequence;

    .line 121
    .line 122
    new-instance p5, Lcom/narvii/chat/thread/e;

    .line 123
    .line 124
    .line 125
    invoke-direct {p5, p0, p4, p3}, Lcom/narvii/chat/thread/e;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;[ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return v3

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 136
    move-result p1

    .line 137
    return p1
.end method

.method onResume()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/chat/service/MyChatListService;->loadNextPage(Z)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->getChatRequestTime()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    .line 34
    const-wide/32 v4, 0x927c0

    .line 35
    sub-long/2addr v2, v4

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const/16 v1, 0x100

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/service/MyChatListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/core/ThreadUpdateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 0
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/service/MyChatListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 10
    return-void
.end method

.method public refreshList()V
    .locals 0

    return-void
.end method
