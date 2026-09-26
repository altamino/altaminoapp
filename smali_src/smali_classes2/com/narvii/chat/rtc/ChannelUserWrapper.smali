.class public Lcom/narvii/chat/rtc/ChannelUserWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_AGORA_JOINED:I = 0x1

.field public static final STATUS_LEAVING:I = 0x2

.field public static final STATUS_SIG_JOINED:I


# instance fields
.field public channelUid:I

.field public channelUser:Lcom/narvii/chat/signalling/ChannelUser;

.field public isPromotingPresenter:Z

.field public status:I

.field public userStatus:Lcom/narvii/video/ui/UserStatusData;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/signalling/ChannelUser;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iput p2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iput p2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 4

    .line 2
    new-instance v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget-object v3, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V

    iget v1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    iput v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    iget-boolean v1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    iput-boolean v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 37
    .line 38
    iget v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 43
    .line 44
    iget v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    .line 49
    .line 50
    iget-boolean p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    .line 51
    .line 52
    if-ne v2, p1, :cond_2

    .line 53
    move v0, v1

    .line 54
    :cond_2
    return v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    return-void
.end method

.method public setUserStatus(Lcom/narvii/video/ui/UserStatusData;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    return-void
.end method
