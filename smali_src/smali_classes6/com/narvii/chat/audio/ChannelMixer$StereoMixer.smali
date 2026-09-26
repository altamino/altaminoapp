.class Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;
.super Lcom/narvii/chat/audio/ChannelMixer;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;-><init>()V

    return-void
.end method


# virtual methods
.method public write([SIII)I
    .locals 7

    .line 1
    const/4 v0, 0x2

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
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-ne p4, v2, :cond_3

    .line 15
    mul-int/2addr p3, v0

    .line 16
    .line 17
    iget-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 18
    array-length p4, p4

    .line 19
    .line 20
    if-ge p4, p3, :cond_1

    .line 21
    .line 22
    new-array p4, p3, [S

    .line 23
    .line 24
    iput-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 25
    .line 26
    :cond_1
    :goto_0
    if-ge v1, p3, :cond_2

    .line 27
    .line 28
    iget-object p4, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 29
    .line 30
    div-int/lit8 v0, v1, 0x2

    .line 31
    add-int/2addr v0, p2

    .line 32
    .line 33
    aget-short v0, p1, v0

    .line 34
    .line 35
    aput-short v0, p4, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    .line 41
    return p3

    .line 42
    :cond_3
    div-int/2addr p3, p4

    .line 43
    mul-int/2addr p3, v0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 46
    array-length v0, v0

    .line 47
    .line 48
    if-ge v0, p3, :cond_4

    .line 49
    .line 50
    new-array v0, p3, [S

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 53
    .line 54
    :cond_4
    div-int/lit8 v0, p3, 0x2

    .line 55
    .line 56
    :goto_1
    if-ge v1, v0, :cond_5

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    .line 59
    .line 60
    mul-int/lit8 v4, v1, 0x2

    .line 61
    .line 62
    mul-int v5, v1, p4

    .line 63
    add-int/2addr v5, p2

    .line 64
    .line 65
    aget-short v6, p1, v5

    .line 66
    .line 67
    aput-short v6, v3, v4

    .line 68
    add-int/2addr v4, v2

    .line 69
    add-int/2addr v5, v2

    .line 70
    .line 71
    aget-short v5, p1, v5

    .line 72
    .line 73
    aput-short v5, v3, v4

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_5
    iput p3, p0, Lcom/narvii/chat/audio/ChannelMixer;->length:I

    .line 79
    return p3
.end method
