.class public final Lcom/google/android/gms/internal/ads/zzcsz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "Lcom/google/android/gms/internal/ads/zzcsy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzzy;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzy;->getValue()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Cannot get correlation id, default to 0."

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final zzalm()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcsy;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcta;-><init>(Lcom/google/android/gms/internal/ads/zzcsz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzalr()Lcom/google/android/gms/internal/ads/zzcsy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcsz;->zzc(Lcom/google/android/gms/internal/ads/zzzy;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsy;-><init>(ILcom/google/android/gms/internal/ads/zzxz;)V

    return-object v0
.end method
