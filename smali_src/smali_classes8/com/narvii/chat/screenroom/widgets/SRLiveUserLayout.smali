.class public Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;,
        Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;
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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0d06ef

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a0819

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0817

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a0816

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a0815

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0a0682

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0a060c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    const p1, 0x7f0a060d

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView2:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    const p1, 0x7f0a081a

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    new-instance p1, Landroid/util/SparseArray;

    .line 103
    .line 104
    .line 105
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 108
    .line 109
    new-instance p1, Landroid/util/SparseArray;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 113
    .line 114
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 117
    const/4 p2, 0x1

    .line 118
    .line 119
    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    .line 120
    .line 121
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/a;

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/a;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->lambda$new$0(Landroid/view/View;)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    iget v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-object v0
.end method

.method private findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    return-object v1
.end method

.method private isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "HostIcon"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;->onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 51
    :cond_1
    return-void
.end method

.method private refreshHostWrapper()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostWrapperInList(Landroid/util/SparseArray;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostWrapperInList(Landroid/util/SparseArray;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lcom/narvii/chat/signalling/ChannelUser;-><init>()V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 28
    .line 29
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 30
    .line 31
    iput v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    iput v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    iput-boolean v3, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 38
    .line 39
    iput-boolean v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->isOffline:Z

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v0, v1}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;I)V

    .line 45
    .line 46
    iput-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 47
    :cond_1
    return-void
.end method

.method private updateHost()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 12
    .line 13
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setLocalUid(I)V

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 19
    .line 20
    iget-object v0, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    :goto_0
    move v5, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :goto_1
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 36
    const/4 v6, 0x0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->isLocalMuted(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 42
    move-result v7

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    const v1, 0x7f120817

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V

    .line 57
    :cond_2
    :goto_2
    return-void
.end method

.method private updateHostLayout()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;->onHostUpdated(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHost()V

    .line 17
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

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    const/4 v4, 0x0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iput-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    .line 7
    if-eqz p2, :cond_d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 41
    move-result v5

    .line 42
    .line 43
    if-ge v4, v5, :cond_7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 50
    .line 51
    iget v6, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 52
    .line 53
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 54
    .line 55
    if-ne v6, v7, :cond_2

    .line 56
    .line 57
    iget-boolean v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    .line 58
    .line 59
    if-nez v6, :cond_3

    .line 60
    .line 61
    :cond_2
    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 62
    .line 63
    if-eqz v6, :cond_5

    .line 64
    .line 65
    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 66
    const/4 v8, 0x1

    .line 67
    .line 68
    if-ne v6, v8, :cond_5

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 78
    .line 79
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 83
    move-result v6

    .line 84
    .line 85
    if-gez v6, :cond_4

    .line 86
    .line 87
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 88
    .line 89
    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_4
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 98
    .line 99
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    .line 106
    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v6

    .line 108
    .line 109
    if-nez v6, :cond_6

    .line 110
    .line 111
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 112
    .line 113
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_5
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 127
    move-result v7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    .line 132
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    move p1, v3

    .line 135
    .line 136
    :goto_2
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 140
    move-result v4

    .line 141
    .line 142
    if-ge p1, v4, :cond_9

    .line 143
    .line 144
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 151
    .line 152
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 153
    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v5

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 160
    move-result v5

    .line 161
    .line 162
    if-nez v5, :cond_8

    .line 163
    .line 164
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 165
    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v4

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 174
    goto :goto_2

    .line 175
    :cond_9
    move p1, v3

    .line 176
    .line 177
    .line 178
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 179
    move-result v0

    .line 180
    .line 181
    if-ge p1, v0, :cond_a

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v4

    .line 188
    .line 189
    check-cast v4, Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v4

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 197
    .line 198
    add-int/lit8 p1, p1, 0x1

    .line 199
    goto :goto_3

    .line 200
    .line 201
    .line 202
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 203
    move-result p1

    .line 204
    .line 205
    if-ge v3, p1, :cond_b

    .line 206
    .line 207
    .line 208
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    check-cast p1, Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 215
    move-result p1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    check-cast v2, Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 237
    move-result v2

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    .line 242
    add-int/lit8 v3, v3, 0x1

    .line 243
    goto :goto_4

    .line 244
    .line 245
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 246
    .line 247
    if-eqz p1, :cond_c

    .line 248
    .line 249
    .line 250
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    .line 254
    :cond_c
    return-void

    .line 255
    .line 256
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 260
    .line 261
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    .line 268
    return-void
.end method


# virtual methods
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateParticipantLayout(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    return-void
.end method

.method public onChannelStatusChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onChannelStatusChanged()V

    .line 6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0817

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "CountButton"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onUserCountClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;->onClick(Landroid/view/View;)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUserForChatThread:Lcom/narvii/model/User;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p1, v1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView:Landroid/view/View;

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    move v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v1

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->gapView2:Landroid/view/View;

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    move v1, v2

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateLayout()V

    .line 66
    :cond_4
    return-void
.end method

.method public setHostUpdateListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->participantItemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 8
    return-void
.end method

.method public setLandscape(Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    move v1, v2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    xor-int/lit8 v1, p1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->linearLayout2:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setLandscape(Z)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a0f35

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    const/high16 v3, 0x42480000    # 50.0f

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    const/high16 v3, 0x42600000    # 56.0f

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 73
    move-result v2

    .line 74
    .line 75
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 76
    .line 77
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCount:Landroid/widget/TextView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    const v2, 0x7f0704cf

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x0

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 110
    move-result v3

    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 116
    goto :goto_2

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    goto :goto_2

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    .line 125
    :goto_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    const v1, 0x7f0704cd

    .line 133
    const/4 v3, -0x1

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    const v5, 0x7f07024d

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    move-result v4

    .line 153
    .line 154
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    goto :goto_3

    .line 156
    .line 157
    .line 158
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    .line 166
    const v5, 0x7f07024e

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 170
    move-result v4

    .line 171
    .line 172
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v4

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 184
    move-result v4

    .line 185
    .line 186
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    .line 188
    :goto_3
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    if-eqz p1, :cond_6

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    .line 210
    const v4, 0x7f0704ce

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 214
    move-result v1

    .line 215
    .line 216
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    .line 218
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    goto :goto_4

    .line 220
    .line 221
    :cond_6
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 225
    move-result-object v3

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    move-result v1

    .line 234
    .line 235
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    .line 237
    :goto_4
    if-eqz p1, :cond_7

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    const v1, 0x7f0704d4

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 252
    move-result p1

    .line 253
    .line 254
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    goto :goto_5

    .line 259
    .line 260
    .line 261
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    .line 269
    const v1, 0x7f0704d3

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 273
    move-result p1

    .line 274
    .line 275
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    .line 280
    :goto_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method public setOnUserCountClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->onUserCountClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;

    return-void
.end method

.method public setTextOnly(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->setTextOnly(Z)V

    .line 6
    return-void
.end method

.method public updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostUpdateListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;->onHostUpdated(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 52
    .line 53
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 57
    move-result v0

    .line 58
    .line 59
    if-ltz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 62
    .line 63
    iget-object v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 64
    .line 65
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostWrapperForChatThread:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHost()V

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapper(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 79
    return-void
.end method

.method public updateHostItem()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostItem()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->refreshHostWrapper()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostLayout()V

    .line 24
    :cond_0
    return-void
.end method

.method public updateHostVolume(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->findHost()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateHostVolume(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->isHostSameAsHostForChatThread(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->hostView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setHostVolumeLevel(I)V

    .line 23
    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostLayout()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->showHostView:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->filterHostForChatThread(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->filterHostForChatThread(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapperList(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->liveUserRecyclerView:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->curChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->presenterList:Landroid/util/SparseArray;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->audienceList:Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->updateChannelUserWrapperList(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 39
    :goto_0
    return-void
.end method
