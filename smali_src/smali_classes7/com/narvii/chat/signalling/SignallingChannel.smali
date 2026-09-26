.class public Lcom/narvii/chat/signalling/SignallingChannel;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 22
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

    .line 2
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iput v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/chat/signalling/SignallingChannel;->clone()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 25
    .line 26
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 27
    .line 28
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 43
    .line 44
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 69
    .line 70
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 71
    .line 72
    if-ne v2, v3, :cond_2

    .line 73
    .line 74
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 75
    .line 76
    iget v3, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 77
    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 81
    .line 82
    iget v2, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 83
    .line 84
    if-ne p1, v2, :cond_2

    .line 85
    move v0, v1

    .line 86
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 26
    .line 27
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 28
    const/4 v4, 0x3

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, " type : "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " role : "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, " userListSize : "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
