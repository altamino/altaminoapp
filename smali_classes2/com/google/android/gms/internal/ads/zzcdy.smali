.class final synthetic Lcom/google/android/gms/internal/ads/zzcdy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbij;


# instance fields
.field private final zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final zzae(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Ad Web View failed to load."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
