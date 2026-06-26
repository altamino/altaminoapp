.class final synthetic Lcom/google/android/gms/internal/ads/zzbxq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfmg:Lcom/google/android/gms/internal/ads/zzdtu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzfmg:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzfmg:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzccj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccj;->zzajj()V

    return-object v0
.end method
