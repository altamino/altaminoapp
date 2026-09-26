.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;
    }
.end annotation


# instance fields
.field public adapter:Lcom/narvii/list/NVAdapter;

.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private channelType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final chatHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtcService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thread:Lcom/narvii/model/ChatThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public userWrapperList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$rtcService$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$rtcService$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->rtcService$delegate:Lw7/m;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->api$delegate:Lw7/m;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$chatHelper$2;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$chatHelper$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->chatHelper$delegate:Lw7/m;

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 65
    return-void
.end method

.method public static final synthetic access$getChannelId(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelId(Lcom/narvii/model/User;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$inviteUser(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->inviteUser(Lcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method private final getChannelId(Lcom/narvii/model/User;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getUserWrapperList()Landroid/util/SparseArray;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 72
    .line 73
    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p1, -0x1

    .line 79
    :goto_1
    return p1
.end method

.method private final inviteUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/chat/video/overlay/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/b;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->inviteAsSpeaker(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 20
    return-void
.end method

.method private static final inviteUser$lambda$1(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/chat/video/overlay/a;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/a;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    .line 27
    .line 28
    .line 29
    const-wide/32 v0, 0x2bf20

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    const p1, 0x7f120856

    .line 40
    const/4 v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    :cond_0
    return-void
.end method

.method private static final inviteUser$lambda$1$lambda$0(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->inviteUser$lambda$1$lambda$0(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->inviteUser$lambda$1(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->setAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final getAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "adapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method public final getChannelType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->chatHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/util/ChatHelper;

    .line 9
    return-object v0
.end method

.method public final getIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "live_chat_guest_viewer"

    return-object v0
.end method

.method public final getRtcService()Lcom/narvii/chat/rtc/RtcService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->rtcService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 14
    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public final getThread()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public final getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserWrapperList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string/jumbo v0, "userWrapperList"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getVvProfileClickListener$Amino_bundle()Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isCoHost()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isHost()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isInvite(Lcom/narvii/model/User;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->isInvitedAsSpeaker(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    const-string v1, "Source"

    .line 18
    .line 19
    const-string v2, "1-1 > Group Chat"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "chatInvite"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getRtcService()Lcom/narvii/chat/rtc/RtcService;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string v0, "clone(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->setUserWrapperList(Landroid/util/SparseArray;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f1207fd

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 77
    .line 78
    const-string/jumbo p1, "uidList"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-class v0, Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string/jumbo v0, "thread"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 105
    .line 106
    const-string v0, "channelType"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 110
    move-result v0

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 119
    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 124
    .line 125
    :cond_1
    if-eqz p1, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_2
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    instance-of v0, v0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "null cannot be cast to non-null type com.narvii.chat.SpeakerInviteNotificationWrapper"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->getUserId()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lkotlin/collections/t;->Z(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getAdapter()Lcom/narvii/list/NVAdapter;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    :cond_1
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0600a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0603eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 106
    const/4 v0, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 110
    :goto_0
    return-void
.end method

.method public final setAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/list/NVAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setChannelType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    return-void
.end method

.method public final setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public final setUserWrapperList(Landroid/util/SparseArray;)V
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    return-void
.end method

.method public final setVvProfileClickListener$Amino_bundle(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method
