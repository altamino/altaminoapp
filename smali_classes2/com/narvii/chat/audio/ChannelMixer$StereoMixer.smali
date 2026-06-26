.class Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;
.super Lcom/narvii/chat/audio/ChannelMixer;
.source "ChannelMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/ChannelMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StereoMixer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;-><init>()V

    return-void
.end method


# virtual methods
.method public write([SIII)I
    .locals 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    if-nez p2, :cond_0

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 54
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    return p3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_3

    mul-int/lit8 p3, p3, 0x2

    .line 58
    iget-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    array-length p4, p4

    if-ge p4, p3, :cond_1

    .line 59
    new-array p4, p3, [S

    iput-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    :cond_1
    :goto_0
    if-ge v1, p3, :cond_2

    .line 62
    iget-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p2

    aget-short v0, p1, v0

    aput-short v0, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    return p3

    .line 67
    :cond_3
    div-int/2addr p3, p4

    mul-int/lit8 p3, p3, 0x2

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    array-length v0, v0

    if-ge v0, p3, :cond_4

    .line 69
    new-array v0, p3, [S

    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 71
    :cond_4
    div-int/lit8 v0, p3, 0x2

    :goto_1
    if-ge v1, v0, :cond_5

    .line 72
    iget-object v3, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    mul-int/lit8 v4, v1, 0x2

    mul-int v5, v1, p4

    add-int/2addr v5, p2

    aget-short v6, p1, v5

    aput-short v6, v3, v4

    add-int/2addr v4, v2

    add-int/2addr v5, v2

    .line 73
    aget-short v5, p1, v5

    aput-short v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_5
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    return p3
.end method
