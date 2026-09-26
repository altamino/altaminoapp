.class public Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;
    }
.end annotation


# static fields
.field public static DIVIDER:Ljava/lang/Object; = null

.field public static INVITE:Ljava/lang/Object; = null

.field public static final TYPE_AUDIENCE:I = 0x2

.field public static final TYPE_DIVIDER:I = 0x3

.field public static final TYPE_INVITE:I = 0x4

.field public static final TYPE_PRESENTER:I = 0x1


# instance fields
.field audienceSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field audienceUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field chatThread:Lcom/narvii/model/ChatThread;

.field hostItemPosition:I

.field private hostVolumeLevel:I

.field private isLandscape:Z

.field itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

.field itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

.field onClickListenerWrapper:Landroid/view/View$OnClickListener;

.field presenterSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field presenterUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

.field private textOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 11
    const/4 p2, -0x1

    .line 12
    .line 13
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    const-string v0, "rtc"

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    .line 36
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V

    .line 53
    .line 54
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    .line 59
    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const/high16 v1, 0x41400000    # 12.0f

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    .line 73
    .line 74
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    const/4 p2, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 82
    .line 83
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 89
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostVolumeLevel:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLandscape:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    return p0
.end method

.method public static getList(Landroid/util/SparseArray;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 24
    .line 25
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget-object v5, v4, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v0
.end method

.method private refreshViews()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    return-void
.end method

.method private refreshViews(Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->getList(Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->getList(Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWrapper(Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    .line 11
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    sget-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->shouldShowInviteButton()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    sget-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public isLocalMuted(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onChannelStatusChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    .line 5
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    .line 7
    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    return-void
.end method

.method public setLandscape(Z)V
    .locals 3

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLandscape:Z

    .line 3
    .line 4
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpaceItemDecoration;->setLandscape(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->notifyDataSetChanged()V

    .line 26
    :cond_0
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    .line 7
    return-void
.end method

.method public shouldShowInviteButton()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_1
    return v1
.end method

.method public updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    instance-of v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 42
    .line 43
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 44
    .line 45
    iget v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    return-void
.end method

.method public updateChannelUserWrapperList(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterSparseArray:Landroid/util/SparseArray;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceSparseArray:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews()V

    .line 10
    return-void
.end method

.method public updateHostItem()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    .line 16
    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public updateHostVolume(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostVolumeLevel:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostItem()V

    .line 6
    return-void
.end method
