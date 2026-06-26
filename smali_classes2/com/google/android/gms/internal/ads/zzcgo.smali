.class final synthetic Lcom/google/android/gms/internal/ads/zzcgo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

.field private final zzfvv:Lcom/google/android/gms/internal/ads/zzarx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzarx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfvv:Lcom/google/android/gms/internal/ads/zzarx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfvv:Lcom/google/android/gms/internal/ads/zzarx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgn;->zzd(Lcom/google/android/gms/internal/ads/zzarx;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
