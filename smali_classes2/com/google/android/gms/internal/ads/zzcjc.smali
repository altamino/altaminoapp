.class public final Lcom/google/android/gms/internal/ads/zzcjc;
.super Ljava/lang/Object;


# instance fields
.field private final zzfyc:Lcom/google/android/gms/internal/ads/zzcja;

.field private final zzfyd:Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzbbl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjc;->zzfyc:Lcom/google/android/gms/internal/ads/zzcja;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjc;->zzfyd:Lcom/google/android/gms/internal/ads/zzbbl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzczc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczc<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjc;->zzfyd:Lcom/google/android/gms/internal/ads/zzbbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjc;->zzfyc:Lcom/google/android/gms/internal/ads/zzcja;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcjd;->zza(Lcom/google/android/gms/internal/ads/zzcja;)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcje;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcje;-><init>(Lcom/google/android/gms/internal/ads/zzcjc;Lcom/google/android/gms/internal/ads/zzczc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjc;->zzfyd:Lcom/google/android/gms/internal/ads/zzbbl;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    return-void
.end method
