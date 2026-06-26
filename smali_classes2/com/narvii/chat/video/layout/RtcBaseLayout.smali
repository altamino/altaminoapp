.class public abstract Lcom/narvii/chat/video/layout/RtcBaseLayout;
.super Landroid/widget/FrameLayout;
.source "RtcBaseLayout.java"

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

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 30
    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    .line 68
    new-instance p1, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;-><init>(Lcom/narvii/chat/video/layout/RtcBaseLayout;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected addNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090bfe

    .line 126
    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->keepMeInFirstPosition()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->keepMeInFirstPosition()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

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

    .line 91
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

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

    .line 65
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

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 249
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 254
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 255
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090bfe

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    iget v2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 258
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

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

    if-eqz p2, :cond_2

    .line 232
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 237
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 238
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090bfe

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 242
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

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

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    .line 168
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 171
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 175
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 176
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez v4, :cond_3

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 184
    iget-object v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iput v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    const/4 v2, 0x0

    .line 185
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 186
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->removeMappedChildView(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 191
    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 193
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_7

    .line 194
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 197
    :goto_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_8

    if-eqz v3, :cond_8

    .line 198
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 201
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isBatchMode:Z

    .line 202
    iget-object v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iput v2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->oldListCount:I

    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const-string v5, "account"

    .line 206
    invoke-interface {v2, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 207
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    move-object v2, v3

    :goto_6
    const/4 v5, 0x0

    .line 210
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 211
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 212
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    move-result v7

    if-lt v6, v7, :cond_c

    .line 213
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 214
    iget-object v7, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->removeMappedChildView(I)V

    .line 217
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->childLimitCount()I

    move-result v7

    if-gt v6, v7, :cond_11

    .line 218
    :cond_d
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 220
    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v6, :cond_e

    move-object v6, v3

    goto :goto_8

    .line 221
    :cond_e
    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    .line 220
    :goto_8
    invoke-static {v6, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 222
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 223
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_10

    if-eqz v6, :cond_f

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v6, 0x1

    .line 222
    :goto_a
    invoke-virtual {p0, v7, v6}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->addNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 227
    :cond_12
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onViewStatusReady()V

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

    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090bfe

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setFloatingMode(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 50
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    return-void
.end method

.method public setIsLauncher(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isLauncher:Z

    return-void
.end method

.method public setLocalChannelUid(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    return-void
.end method

.method public setLocalUid(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    return-void
.end method

.method public setUserClickedListener(Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

    return-void
.end method

.method public setVVProfileClickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 0

    .line 41
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
