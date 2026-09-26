.class Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;
.super Lcom/narvii/chat/audio/ChannelMixer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/ChannelMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonoMixer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;-><init>()V

    return-void
.end method


# virtual methods
.method public write([SIII)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    .line 10
    return p3

    .line 11
    :cond_0
    div-int/2addr p3, p4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 14
    array-length v0, v0

    .line 15
    .line 16
    if-ge v0, p3, :cond_1

    .line 17
    .line 18
    new-array v0, p3, [S

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v0, p3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 26
    .line 27
    mul-int v2, v0, p4

    .line 28
    add-int/2addr v2, p2

    .line 29
    .line 30
    aget-short v2, p1, v2

    .line 31
    .line 32
    aput-short v2, v1, v0

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    .line 38
    return p3
.end method
