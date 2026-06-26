.class public Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;
.super Lio/agora/rtc/internal/Marshallable;
.source "RtcEngineMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PRemoteAudioStat"
.end annotation


# instance fields
.field public stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 563
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    .line 564
    new-instance v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-direct {v0}, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->clear()V

    return-void
.end method

.method public bridge synthetic getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->marshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public marshall()[B
    .locals 1

    .line 568
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->uid:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 569
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->quality:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 570
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->networkTransportDelay:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 571
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->jitterBufferDelay:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 572
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->audioLossRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 573
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->numChannels:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 574
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->receivedSampleRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 575
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->receivedBitrate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 576
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->totalFrozenTime:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 577
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->frozenRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->pushInt(I)V

    .line 578
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popAll()[B
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popAll()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBool()Ljava/lang/Boolean;
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBool()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popByte()B
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popByte()B

    move-result v0

    return v0
.end method

.method public bridge synthetic popBytes()[B
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBytes32()[B
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes32()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popInt()I
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v0

    return v0
.end method

.method public bridge synthetic popInt64()J
    .locals 2

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic popIntArray()[I
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popShort()S
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    move-result v0

    return v0
.end method

.method public bridge synthetic popShortArray()[S
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShortArray()[S

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16()Ljava/lang/String;
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16UTF8()Ljava/lang/String;
    .locals 1

    .line 563
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16UTF8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pushBool(Ljava/lang/Boolean;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic pushByte(B)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushByte(B)V

    return-void
.end method

.method public bridge synthetic pushBytes([B)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    return-void
.end method

.method public bridge synthetic pushBytes32([B)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes32([B)V

    return-void
.end method

.method public bridge synthetic pushDouble(D)V
    .locals 0

    .line 563
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    return-void
.end method

.method public bridge synthetic pushInt(I)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method

.method public bridge synthetic pushInt64(J)V
    .locals 0

    .line 563
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt64(J)V

    return-void
.end method

.method public bridge synthetic pushIntArray([I)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([I)V

    return-void
.end method

.method public bridge synthetic pushIntArray([Ljava/lang/Integer;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic pushShort(S)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    return-void
.end method

.method public bridge synthetic pushShortArray([S)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShortArray([S)V

    return-void
.end method

.method public bridge synthetic pushString16(Ljava/lang/String;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pushStringArray(Ljava/util/ArrayList;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshall([B)V
    .locals 1

    .line 583
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    .line 584
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->uid:I

    .line 585
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->quality:I

    .line 586
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->networkTransportDelay:I

    .line 587
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->jitterBufferDelay:I

    .line 588
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->audioLossRate:I

    .line 589
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->numChannels:I

    .line 590
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->receivedSampleRate:I

    .line 591
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->receivedBitrate:I

    .line 592
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->totalFrozenTime:I

    .line 593
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->frozenRate:I

    return-void
.end method
