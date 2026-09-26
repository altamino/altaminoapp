.class public abstract Lcom/narvii/chat/video/layout/RtcBaseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcDataUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;,
        Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;
    }
.end annotation


# instance fields
.field private VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field protected isBatchMode:Z

.field protected isFloatingMode:Z

.field protected isLauncher:Z

.field protected localChannelUid:I

.field protected localUid:Ljava/lang/String;

.field protected oldListCount:I

.field protected onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

.field protected threadId:Ljava/lang/String;

.field userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

.field userList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    .line 3
    new-instance p1, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;-><init>(Lcom/narvii/chat/video/layout/RtcBaseLayout;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected addNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a0f21

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->keepMeInFirstPosition()Z

    .line 43
    move-result p2

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->keepMeInFirstPosition()Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :goto_0
    return-void
.end method

.method protected childLimitCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    return-object p1
.end method

.method protected getChannelType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    return-object v0
.end method

.method protected keepMeInFirstPosition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-ge p1, v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0f21

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget v2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 38
    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v1

    .line 44
    .line 45
    if-ne v2, v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 49
    .line 50
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 3
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
    if-eqz p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ge p1, v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0f21

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-ltz v2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 67
    .line 68
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    return-void
.end method

.method public notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 10
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
    if-eqz p2, :cond_13

    .line 3
    .line 4
    if-eqz p1, :cond_13

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_b

    .line 11
    .line 12
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    .line 23
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    .line 30
    if-ge v2, v3, :cond_4

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 73
    .line 74
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 75
    .line 76
    if-eq v3, v4, :cond_1

    .line 77
    move v4, v1

    .line 78
    .line 79
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 87
    move-result v3

    .line 88
    .line 89
    if-ltz v3, :cond_2

    .line 90
    .line 91
    if-nez v4, :cond_3

    .line 92
    .line 93
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 97
    move-result v3

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eq v2, v4, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    move-result v2

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    move v2, v4

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    move v2, v1

    .line 123
    .line 124
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 125
    .line 126
    iget-object v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 130
    move-result v2

    .line 131
    .line 132
    iput v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    .line 133
    move v2, v1

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 137
    move-result v3

    .line 138
    .line 139
    if-ge v2, v3, :cond_6

    .line 140
    .line 141
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    check-cast v5, Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 151
    move-result v5

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 159
    .line 160
    check-cast v3, Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 164
    move-result v3

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v3}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->removeMappedChildView(I)V

    .line 168
    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    goto :goto_2

    .line 171
    .line 172
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    move v2, v1

    .line 177
    .line 178
    .line 179
    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 180
    move-result v3

    .line 181
    .line 182
    if-ge v2, v3, :cond_9

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 189
    .line 190
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 191
    .line 192
    if-eqz v3, :cond_7

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 196
    move-result-object v3

    .line 197
    .line 198
    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 199
    .line 200
    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 201
    .line 202
    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 203
    .line 204
    if-ne v3, v4, :cond_7

    .line 205
    move v3, v4

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    move v3, v1

    .line 208
    .line 209
    :goto_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 213
    move-result v6

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 217
    move-result v5

    .line 218
    .line 219
    if-gez v5, :cond_8

    .line 220
    .line 221
    if-eqz v3, :cond_8

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 225
    move-result v3

    .line 226
    .line 227
    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    .line 232
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 235
    goto :goto_3

    .line 236
    .line 237
    .line 238
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 239
    move-result v2

    .line 240
    .line 241
    if-eq v2, v4, :cond_a

    .line 242
    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 245
    move-result v2

    .line 246
    .line 247
    if-eqz v2, :cond_a

    .line 248
    move v2, v4

    .line 249
    goto :goto_5

    .line 250
    :cond_a
    move v2, v1

    .line 251
    .line 252
    :goto_5
    iput-boolean v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 253
    .line 254
    iget-object v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 258
    move-result v2

    .line 259
    .line 260
    iput v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    move-result-object v2

    .line 265
    .line 266
    .line 267
    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 268
    move-result-object v2

    .line 269
    const/4 v3, 0x0

    .line 270
    .line 271
    if-eqz v2, :cond_b

    .line 272
    .line 273
    const-string v5, "account"

    .line 274
    .line 275
    .line 276
    invoke-interface {v2, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 284
    goto :goto_6

    .line 285
    :cond_b
    move-object v2, v3

    .line 286
    :goto_6
    move v5, v1

    .line 287
    .line 288
    .line 289
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 290
    move-result v6

    .line 291
    .line 292
    if-ge v5, v6, :cond_12

    .line 293
    .line 294
    .line 295
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    move-result-object v6

    .line 297
    .line 298
    check-cast v6, Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 302
    move-result v6

    .line 303
    .line 304
    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 305
    .line 306
    if-ne v6, v7, :cond_c

    .line 307
    .line 308
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 312
    move-result v6

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    .line 316
    move-result v7

    .line 317
    .line 318
    if-lt v6, v7, :cond_c

    .line 319
    .line 320
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 324
    move-result v6

    .line 325
    .line 326
    iget-object v7, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v6}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->removeMappedChildView(I)V

    .line 333
    .line 334
    .line 335
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    .line 336
    move-result v6

    .line 337
    const/4 v7, -0x1

    .line 338
    .line 339
    if-eq v6, v7, :cond_d

    .line 340
    .line 341
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 345
    move-result v6

    .line 346
    add-int/2addr v6, v4

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    .line 350
    move-result v7

    .line 351
    .line 352
    if-gt v6, v7, :cond_11

    .line 353
    .line 354
    :cond_d
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 355
    .line 356
    .line 357
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object v7

    .line 359
    .line 360
    check-cast v7, Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 364
    move-result v7

    .line 365
    .line 366
    .line 367
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    move-result-object v8

    .line 369
    .line 370
    check-cast v8, Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 374
    move-result v8

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v8

    .line 379
    .line 380
    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    move-result-object v6

    .line 388
    .line 389
    check-cast v6, Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 393
    move-result v6

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 397
    move-result-object v6

    .line 398
    .line 399
    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 400
    .line 401
    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 402
    .line 403
    if-nez v6, :cond_e

    .line 404
    move-object v6, v3

    .line 405
    goto :goto_8

    .line 406
    .line 407
    .line 408
    :cond_e
    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 409
    move-result-object v6

    .line 410
    .line 411
    .line 412
    :goto_8
    invoke-static {v6, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    move-result v6

    .line 414
    .line 415
    .line 416
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 417
    move-result-object v7

    .line 418
    .line 419
    check-cast v7, Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 423
    move-result v7

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 427
    move-result-object v7

    .line 428
    .line 429
    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 430
    .line 431
    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 432
    .line 433
    .line 434
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    move-result-object v9

    .line 436
    .line 437
    check-cast v9, Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 441
    move-result v9

    .line 442
    .line 443
    if-eq v8, v9, :cond_10

    .line 444
    .line 445
    if-eqz v6, :cond_f

    .line 446
    goto :goto_9

    .line 447
    :cond_f
    move v6, v1

    .line 448
    goto :goto_a

    .line 449
    :cond_10
    :goto_9
    move v6, v4

    .line 450
    .line 451
    .line 452
    :goto_a
    invoke-virtual {p0, v7, v6}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->addNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    .line 453
    .line 454
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 455
    .line 456
    goto/16 :goto_7

    .line 457
    .line 458
    .line 459
    :cond_12
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onViewStatusReady()V

    .line 460
    :cond_13
    :goto_b
    return-void
.end method

.method protected onViewStatusReady()V
    .locals 0

    return-void
.end method

.method public removeMappedChildView(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a0f21

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-ne v2, p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setFloatingMode(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    .line 6
    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isLauncher:Z

    return-void
.end method

.method public setLocalChannelUid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    return-void
.end method

.method public setLocalUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    return-void
.end method

.method public setUserClickedListener(Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

    return-void
.end method

.method public setVVProfileClickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method

.method protected updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    return-void
.end method

.method protected updateViews()V
    .locals 0

    return-void
.end method
