.class public Lcom/narvii/chat/signalling/SignallingChannel;
.super Ljava/lang/Object;
.source "SignallingChannel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CHANNEL_TYPE_AUDIO:I = 0x1

.field public static final CHANNEL_TYPE_AVATAR:I = 0x3

.field public static final CHANNEL_TYPE_NONE:I = 0x0

.field public static final CHANNEL_TYPE_SCREEN_ROOM:I = 0x5

.field public static final CHANNEL_TYPE_VIDEO:I = 0x4

.field public static final JOIN_ROLE_AUDIENCE:I = 0x2

.field public static final JOIN_ROLE_GUEST:I = 0x0

.field public static final JOIN_ROLE_GUEST_AUDIENCE:I = 0x3

.field public static final JOIN_ROLE_PRESENTER:I = 0x1


# instance fields
.field public channelKey:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public channelType:I

.field public channelUid:I

.field public expiredAfter:J

.field public joinRole:I

.field lostConnectionTime:J

.field public final ndcId:I

.field public final threadId:Ljava/lang/String;

.field public threadStatus:I

.field public final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field

.field public final userWaitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 49
    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    return-void
.end method

.method public static isCameraPermissionRequestType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCameraPermissionRequestTypeForHost(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLegalChannelType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isLegalRole(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNotGuestRole(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected clone()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 56
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 57
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 58
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 60
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 61
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 62
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 63
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-wide v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->expiredAfter:J

    iput-wide v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->expiredAfter:J

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/signalling/SignallingChannel;->clone()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v2, :cond_2

    .line 78
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 79
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 80
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 82
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getFilteredList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 102
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " role : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userListSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
