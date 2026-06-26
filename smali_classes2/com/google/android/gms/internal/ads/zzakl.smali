.class final synthetic Lcom/google/android/gms/internal/ads/zzakl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajx;


# instance fields
.field private final zzdce:Lcom/google/android/gms/internal/ads/zzakh;

.field private final zzdci:Lcom/google/android/gms/internal/ads/zzala;

.field private final zzdcj:Lcom/google/android/gms/internal/ads/zzajw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdci:Lcom/google/android/gms/internal/ads/zzala;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdcj:Lcom/google/android/gms/internal/ads/zzajw;

    return-void
.end method


# virtual methods
.method public final zzrv()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdci:Lcom/google/android/gms/internal/ads/zzala;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzdcj:Lcom/google/android/gms/internal/ads/zzajw;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V

    sget v0, Lcom/google/android/gms/internal/ads/zzaku;->zzdcs:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
