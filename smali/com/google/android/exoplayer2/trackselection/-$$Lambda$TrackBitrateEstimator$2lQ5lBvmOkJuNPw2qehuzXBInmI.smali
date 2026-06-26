.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackBitrateEstimator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$TrackBitrateEstimator$2lQ5lBvmOkJuNPw2qehuzXBInmI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBitrates([Lcom/google/android/exoplayer2/Format;Ljava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;[I)[I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/TrackBitrateEstimator$-CC;->lambda$static$0([Lcom/google/android/exoplayer2/Format;Ljava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;[I)[I

    move-result-object p1

    return-object p1
.end method
