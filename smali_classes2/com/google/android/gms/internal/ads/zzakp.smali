.class final Lcom/google/android/gms/internal/ads/zzakp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaho<",
        "Lcom/google/android/gms/internal/ads/zzalf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

.field private final synthetic zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

.field private final synthetic zzdco:Lcom/google/android/gms/internal/ads/zzdh;

.field private final synthetic zzdcp:Lcom/google/android/gms/internal/ads/zzazk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzajw;Lcom/google/android/gms/internal/ads/zzazk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdco:Lcom/google/android/gms/internal/ads/zzdh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcp:Lcom/google/android/gms/internal/ads/zzazk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzakh;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbad;->zzeo(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakh;->zzd(Lcom/google/android/gms/internal/ads/zzakh;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbad;->zzeo(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzakh;I)I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdco:Lcom/google/android/gms/internal/ads/zzdh;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzala;

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzdcp:Lcom/google/android/gms/internal/ads/zzazk;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazk;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 11
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzalf;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
