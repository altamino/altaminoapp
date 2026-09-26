.class public Lcom/google/android/exoplayer2/audio/c0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/c0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final audioProcessors:[Lcom/google/android/exoplayer2/audio/g;

.field private final silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/k0;

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/m0;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/g;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/audio/k0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/k0;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/audio/m0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/m0;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/c0$i;-><init>([Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/k0;Lcom/google/android/exoplayer2/audio/m0;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/k0;Lcom/google/android/exoplayer2/audio/m0;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->audioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    const/4 v1, 0x0

    .line 4
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/c0$i;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/k0;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/c0$i;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/m0;

    .line 5
    array-length v1, p1

    aput-object p2, v0, v1

    .line 6
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/k0;->q(Z)V

    .line 6
    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/c3;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/m0;

    .line 3
    .line 4
    iget v1, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/m0;->d(F)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/m0;

    .line 10
    .line 11
    iget v1, p1, Lcom/google/android/exoplayer2/c3;->pitch:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/m0;->c(F)V

    .line 15
    return-object p1
.end method

.method public getAudioProcessors()[Lcom/google/android/exoplayer2/audio/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->audioProcessors:[Lcom/google/android/exoplayer2/audio/g;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/m0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/m0;->b(J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$i;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/k0;->k()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
