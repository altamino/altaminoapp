.class final Lcom/google/android/gms/internal/ads/zzbbk;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzbbh<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zzdzy:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzdzy:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzdzy:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzdzy:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbi;->zzxd()V

    return-void
.end method

.method public final zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzdzy:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbi;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
