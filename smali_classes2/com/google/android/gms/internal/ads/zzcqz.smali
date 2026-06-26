.class public final Lcom/google/android/gms/internal/ads/zzcqz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbal<",
        "Lcom/google/android/gms/internal/ads/zzarx;",
        "Lcom/google/android/gms/internal/ads/zzcrc;",
        ">;"
    }
.end annotation


# instance fields
.field private zzffi:Ljava/util/concurrent/Executor;

.field private zzgfv:Lcom/google/android/gms/internal/ads/zzchz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzffi:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzgfv:Lcom/google/android/gms/internal/ads/zzchz;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzarx;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzgfv:Lcom/google/android/gms/internal/ads/zzchz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchz;->zzg(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcra;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcra;-><init>(Lcom/google/android/gms/internal/ads/zzarx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zzffi:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
