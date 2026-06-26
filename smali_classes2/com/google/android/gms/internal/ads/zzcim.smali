.class final synthetic Lcom/google/android/gms/internal/ads/zzcim;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzo:Lcom/google/android/gms/internal/ads/zzbbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzo:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzo:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcir;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzciw;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzasd;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcir;-><init>(Lcom/google/android/gms/internal/ads/zzciw;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzasd;)V

    return-object v3
.end method
