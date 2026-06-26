.class public final Lcom/google/android/gms/internal/ads/zzbfq;
.super Lcom/google/android/gms/internal/ads/zzawv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field final zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

.field private final zzecf:Ljava/lang/String;

.field private final zzecg:[Ljava/lang/String;

.field final zzehq:Lcom/google/android/gms/internal/ads/zzbft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzehq:Lcom/google/android/gms/internal/ads/zzbft;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzecf:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzecg:[Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzmc()Lcom/google/android/gms/internal/ads/zzbfs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbfs;->zza(Lcom/google/android/gms/internal/ads/zzbfq;)V

    return-void
.end method


# virtual methods
.method public final zzto()V
    .locals 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzehq:Lcom/google/android/gms/internal/ads/zzbft;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzecf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzecg:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbft;->zze(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Lcom/google/android/gms/internal/ads/zzbfq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Lcom/google/android/gms/internal/ads/zzbfq;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
