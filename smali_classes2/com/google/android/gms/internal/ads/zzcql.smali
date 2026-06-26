.class final Lcom/google/android/gms/internal/ads/zzcql;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzcdb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgfh:Lcom/google/android/gms/internal/ads/zzcdf;

.field private final synthetic zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzcdf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfh:Lcom/google/android/gms/internal/ads/zzcdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfh:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzadb()Lcom/google/android/gms/internal/ads/zzbrm;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zze(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrm;->onAdFailedToLoad(I)V

    const-string v1, "NonagonRewardedVideoAdImpl.onFailure"

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcya;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 3

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdb;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzcdb;)Lcom/google/android/gms/internal/ads/zzcdb;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpc;->zzafl()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
