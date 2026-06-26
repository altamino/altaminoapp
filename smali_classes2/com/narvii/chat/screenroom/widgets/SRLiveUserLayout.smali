.class public Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "SRLiveUserLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;
    }
.end annotation


# instance fields
.field private audienceList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field private gapView:Landroid/view/View;

.field private gapView2:Landroid/view/View;

.field hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

.field private hostUserForChatThread:Lcom/narvii/model/User;

.field private hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

.field private hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field liveUserCount:Landroid/widget/TextView;

.field liveUserCountContainer:Landroid/widget/LinearLayout;

.field liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

.field onUserCountClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;

.field participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

.field private presenterList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private showHostView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0637

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090690

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    const p1, 0x7f09068e

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09068d

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    const p1, 0x7f09068c

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090526

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    const p1, 0x7f0904c5

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView:Landroid/view/View;

    const p1, 0x7f0904c6

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView2:Landroid/view/View;

    const p1, 0x7f090691

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 68
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    .line 69
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/-$$Lambda$SRLiveUserLayout$DSHtBPQL9EcQyQThYuVbrzVhLAQ;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/-$$Lambda$SRLiveUserLayout$DSHtBPQL9EcQyQThYuVbrzVhLAQ;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private filterHostForChatThread(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-object p1

    .line 371
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 372
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 373
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 374
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    iget v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v1, :cond_0

    .line 331
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private refreshHostWrapper()V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostWrapperInList(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostWrapperInList(Landroid/util/SparseArray;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/narvii/chat/signalling/ChannelUser;

    invoke-direct {v0}, Lcom/narvii/chat/signalling/ChannelUser;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    iput-object v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 348
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    const/4 v2, 0x1

    .line 349
    iput v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v3, 0x0

    .line 350
    iput-boolean v3, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 351
    iput-boolean v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->isOffline:Z

    .line 352
    new-instance v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {v2, v0, v1}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;I)V

    iput-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    :cond_1
    return-void
.end method

.method private updateHost()V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setLocalUid(I)V

    .line 101
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 103
    invoke-virtual {v0, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLocalMuted(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0f0768

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateHostLayout()V
    .locals 2

    .line 228
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;->onHostUpdated(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHost()V

    return-void
.end method

.method private updateHostWrapperInList(Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 357
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 358
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 359
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    iput-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private updateParticipantLayout(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p2, :cond_e

    .line 175
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 182
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 187
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 188
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 189
    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 190
    iget-boolean v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v6, :cond_6

    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v6, v8, :cond_6

    .line 192
    :cond_4
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_5

    .line 194
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_5
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 197
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v5}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 201
    :cond_6
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 205
    :goto_3
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge p1, v4, :cond_a

    .line 206
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 207
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 208
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 212
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 213
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 216
    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_c

    .line 217
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 221
    :cond_c
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    if-eqz p1, :cond_d

    .line 222
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 223
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    :cond_d
    return-void

    .line 176
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 177
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 178
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SRLiveUserLayout(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_1

    .line 71
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "HostIcon"

    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 75
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;->onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_1
    return-void
.end method

.method public notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;I)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateParticipantLayout(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChannelStatusChanged()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onChannelStatusChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09068e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CountButton"

    .line 249
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onUserCountClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 271
    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    .line 272
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView2:Landroid/view/View;

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz p1, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 277
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    :cond_4
    return-void
.end method

.method public setHostUpdateListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 1

    .line 261
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setLandscape(Z)V

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    const v1, 0x7f090c0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_2

    const/high16 v3, 0x42480000    # 50.0f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x42600000    # 56.0f

    :goto_1
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    .line 117
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 118
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 124
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    :goto_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v1, 0x7f070299

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 135
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 138
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    :goto_3
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07029a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 148
    :cond_6
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_4
    if-eqz p1, :cond_7

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 153
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 155
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07029f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 156
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 158
    :goto_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onUserCountClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;

    return-void
.end method

.method public setTextOnly(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setTextOnly(Z)V

    return-void
.end method

.method public updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 290
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_2

    .line 291
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;->onHostUpdated(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 295
    invoke-virtual {v0}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 297
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHost()V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public updateHostItem()V
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostItem()V

    .line 310
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 312
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostLayout()V

    :cond_0
    return-void
.end method

.method public updateHostVolume(I)V
    .locals 2

    .line 318
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v1, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostVolume(I)V

    .line 321
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setHostVolumeLevel(I)V

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 236
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostLayout()V

    .line 237
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->filterHostForChatThread(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-direct {p0, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->filterHostForChatThread(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapperList(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapperList(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :goto_0
    return-void
.end method
