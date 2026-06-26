.class public final Lcom/google/android/gms/internal/ads/zzadg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final time:J

.field private final zzcxm:Ljava/lang/String;

.field private final zzcxn:Lcom/google/android/gms/internal/ads/zzadg;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzadg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadg;->time:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzcxm:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzcxn:Lcom/google/android/gms/internal/ads/zzadg;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->time:J

    return-wide v0
.end method

.method public final zzqu()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzcxm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzqv()Lcom/google/android/gms/internal/ads/zzadg;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzcxn:Lcom/google/android/gms/internal/ads/zzadg;

    return-object v0
.end method
