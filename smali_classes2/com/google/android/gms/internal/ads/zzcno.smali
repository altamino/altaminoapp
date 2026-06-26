.class final synthetic Lcom/google/android/gms/internal/ads/zzcno;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbij;


# instance fields
.field private final zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzgar:Lcom/google/android/gms/internal/ads/zzced;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzced;Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgar:Lcom/google/android/gms/internal/ads/zzced;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method


# virtual methods
.method public final zzae(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgar:Lcom/google/android/gms/internal/ads/zzced;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzced;->zzajo()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaac()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbii;->zzabd()V

    return-void
.end method
