.class final Lcom/google/android/gms/internal/ads/zzash;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzase;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzdqf:Lcom/google/android/gms/internal/ads/zzasg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasg;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzash;->zzdqf:Lcom/google/android/gms/internal/ads/zzasg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzash;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzash;->zzdqf:Lcom/google/android/gms/internal/ads/zzasg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasg;->zza(Lcom/google/android/gms/internal/ads/zzasg;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzash;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasi;

    if-eqz v0, :cond_1

    .line 5
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzasi;->zzdqg:J

    sget-object v3, Lcom/google/android/gms/internal/ads/zzacu;->zzcqm:Lcom/google/android/gms/internal/ads/zzacj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzash;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->zzdqh:Lcom/google/android/gms/internal/ads/zzase;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzase;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasf;->zzty()Lcom/google/android/gms/internal/ads/zzase;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzash;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasf;->zzty()Lcom/google/android/gms/internal/ads/zzase;

    move-result-object v0

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzash;->zzdqf:Lcom/google/android/gms/internal/ads/zzasg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzasg;->zza(Lcom/google/android/gms/internal/ads/zzasg;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzash;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzash;->zzdqf:Lcom/google/android/gms/internal/ads/zzasg;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzase;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
