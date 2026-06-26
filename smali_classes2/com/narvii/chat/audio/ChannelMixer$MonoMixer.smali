.class Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;
.super Lcom/narvii/chat/audio/ChannelMixer;
.source "ChannelMixer.java"


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

    .line 28
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;-><init>()V

    return-void
.end method


# virtual methods
.method public write([SIII)I
    .locals 3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    if-nez p2, :cond_0

    .line 32
    iput-object p1, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 33
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    return p3

    .line 36
    :cond_0
    div-int/2addr p3, p4

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    array-length v0, v0

    if-ge v0, p3, :cond_1

    .line 38
    new-array v0, p3, [S

    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 41
    iget-object v1, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    mul-int v2, v0, p4

    add-int/2addr v2, p2

    aget-short v2, p1, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    return p3
.end method
