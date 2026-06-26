.class public Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SRLiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;
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

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    const/4 p2, -0x1

    .line 69
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    .line 81
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    .line 102
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "rtc"

    .line 103
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 104
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    .line 106
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

    .line 108
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 110
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostVolumeLevel:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLandscape:Z

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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 348
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 351
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 352
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 353
    iget-object v4, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v4, :cond_2

    .line 354
    iget-object v5, v4, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    .line 355
    iget-boolean v4, v4, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v4, :cond_1

    .line 356
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private refreshViews()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    return-void
.end method

.method private refreshViews(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->getList(Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    .line 185
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->getList(Landroid/util/SparseArray;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWrapper(Ljava/util/List;)V

    .line 188
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    const/4 p1, -0x1

    .line 191
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    .line 192
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 193
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz p1, :cond_1

    .line 196
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    if-nez p1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    sget-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceUserList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->shouldShowInviteButton()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 215
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    sget-object v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public isLocalMuted(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 417
    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onChannelStatusChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    return-void
.end method

.method public setLandscape(Z)V
    .locals 3

    .line 120
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLandscape:Z

    .line 121
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->spaceItemDecoration:Lcom/narvii/widget/SpaceItemDecoration;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpaceItemDecoration;->setLandscape(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->textOnly:Z

    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews(Z)V

    return-void
.end method

.method public shouldShowInviteButton()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 152
    instance-of v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v2, :cond_2

    .line 153
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 154
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v1, v2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    .line 130
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 131
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->presenterSparseArray:Landroid/util/SparseArray;

    .line 132
    iput-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->audienceSparseArray:Landroid/util/SparseArray;

    .line 134
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->refreshViews()V

    return-void
.end method

.method public updateHostItem()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostItemPosition:I

    if-le v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public updateHostVolume(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->hostVolumeLevel:I

    .line 404
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostItem()V

    return-void
.end method
