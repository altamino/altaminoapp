.class final synthetic Lcom/google/android/gms/internal/ads/zzale;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdda:Lcom/google/android/gms/internal/ads/zzald;

.field private final zzddb:Lcom/google/android/gms/internal/ads/zzajw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzald;Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdda:Lcom/google/android/gms/internal/ads/zzald;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzddb:Lcom/google/android/gms/internal/ads/zzajw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdda:Lcom/google/android/gms/internal/ads/zzald;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzddb:Lcom/google/android/gms/internal/ads/zzajw;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzald;->zzdcz:Lcom/google/android/gms/internal/ads/zzala;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zza(Lcom/google/android/gms/internal/ads/zzala;)Lcom/google/android/gms/internal/ads/zzayp;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzh(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzajw;->destroy()V

    return-void
.end method
