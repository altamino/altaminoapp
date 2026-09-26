.class public final Lcom/google/android/exoplayer2/audio/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/audio/c$b;->bitstreamVersion:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/c$b;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/c$b;->sampleRate:I

    iput p4, p0, Lcom/google/android/exoplayer2/audio/c$b;->frameSize:I

    iput p5, p0, Lcom/google/android/exoplayer2/audio/c$b;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/android/exoplayer2/audio/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/c$b;-><init>(IIIII)V

    return-void
.end method
