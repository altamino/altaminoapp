.class final Lcom/google/android/gms/internal/ads/zzald;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbbv<",
        "Lcom/google/android/gms/internal/ads/zzajw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzdcz:Lcom/google/android/gms/internal/ads/zzala;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzala;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdcz:Lcom/google/android/gms/internal/ads/zzala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzajw;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzale;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzale;-><init>(Lcom/google/android/gms/internal/ads/zzald;Lcom/google/android/gms/internal/ads/zzajw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
