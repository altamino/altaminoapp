.class public abstract Lcom/narvii/chat/audio/ChannelMixer;
.super Ljava/lang/Object;
.source "ChannelMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;,
        Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;
    }
.end annotation


# instance fields
.field public buffer:[S

.field public length:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [S

    .line 9
    iput-object v0, p0, Lcom/narvii/chat/audio/ChannelMixer;->buffer:[S

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/audio/ChannelMixer;-><init>()V

    return-void
.end method

.method public static getMixer(I)Lcom/narvii/chat/audio/ChannelMixer;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 22
    new-instance p0, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;

    invoke-direct {p0, v1}, Lcom/narvii/chat/audio/ChannelMixer$StereoMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 20
    :cond_1
    new-instance p0, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;

    invoke-direct {p0, v1}, Lcom/narvii/chat/audio/ChannelMixer$MonoMixer;-><init>(Lcom/narvii/chat/audio/ChannelMixer$1;)V

    return-object p0
.end method


# virtual methods
.method public abstract write([SIII)I
.end method
