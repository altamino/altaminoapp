.class public abstract Lcom/narvii/chat/audio/ChannelMixer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;,
        Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;
    }
.end annotation


# instance fields
.field public buffer:[S

.field public length:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>()V

    return-void
.end method

.method public static getMixer(I)Lcom/narvii/chat/audio/ChannelMixer;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 19
    throw p0

    .line 20
    .line 21
    :cond_1
    new-instance p0, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    .line 25
    return-object p0
.end method


# virtual methods
.method public abstract write([SIII)I
.end method
