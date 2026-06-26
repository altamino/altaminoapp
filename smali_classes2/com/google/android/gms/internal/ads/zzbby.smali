.class final Lcom/google/android/gms/internal/ads/zzbby;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzear:Lcom/google/android/gms/internal/ads/zzbbv;

.field private final synthetic zzeas:Lcom/google/android/gms/internal/ads/zzbbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzbbv;Lcom/google/android/gms/internal/ads/zzbbt;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzear:Lcom/google/android/gms/internal/ads/zzbbv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzeas:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzeas:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbt;->run()V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzear:Lcom/google/android/gms/internal/ads/zzbbv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbv;->zzh(Ljava/lang/Object;)V

    return-void
.end method
