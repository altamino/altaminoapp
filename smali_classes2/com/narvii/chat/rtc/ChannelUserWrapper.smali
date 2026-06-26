.class public Lcom/narvii/chat/rtc/ChannelUserWrapper;
.super Ljava/lang/Object;
.source "ChannelUserWrapper.java"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 30
    iput p2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 24
    iput p2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 25
    iput-object p3, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;
    .locals 4

    .line 62
    new-instance v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget-object v3, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/ChannelUserWrapper;-><init>(Lcom/narvii/chat/signalling/ChannelUser;ILcom/narvii/video/ui/UserStatusData;)V

    .line 63
    iget v1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    iput v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 64
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

    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

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

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v2, :cond_2

    .line 50
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 51
    iget-object v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-object v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    iget-object v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 52
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    iget v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v3, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    iget-boolean p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->isPromotingPresenter:Z

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    return-void
.end method

.method public setUserStatus(Lcom/narvii/video/ui/UserStatusData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    return-void
.end method
