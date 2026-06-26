.class public Lcom/narvii/chat/signalling/ChannelUser;
.super Ljava/lang/Object;
.source "ChannelUser.java"


# static fields
.field public static final JOIN_ROLE_AUDIENCE:I = 0x2

.field public static final JOIN_ROLE_GUEST:I = 0x0

.field public static final JOIN_ROLE_GUEST_AUDIENCE:I = 0x3

.field public static final JOIN_ROLE_PRESENTER:I = 0x1


# instance fields
.field public channelUid:I

.field public isHost:Z

.field public isOffline:Z

.field public joinRole:I

.field public joinedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public userProfile:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/narvii/chat/signalling/ChannelUser;
    .locals 2

    .line 65
    new-instance v0, Lcom/narvii/chat/signalling/ChannelUser;

    invoke-direct {v0}, Lcom/narvii/chat/signalling/ChannelUser;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    iput-object v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 67
    iget v1, p0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iput v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 68
    iget v1, p0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    iput v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->clone()Lcom/narvii/chat/signalling/ChannelUser;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_2

    .line 54
    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 55
    iget v2, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isGuest()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeaker()Z
    .locals 2

    .line 38
    iget v0, p0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
