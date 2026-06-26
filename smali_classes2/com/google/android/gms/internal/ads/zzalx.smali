.class final Lcom/google/android/gms/internal/ads/zzalx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahw;


# instance fields
.field private final synthetic zzddt:Lcom/google/android/gms/internal/ads/zzalu;

.field private final zzddu:Lcom/google/android/gms/internal/ads/zzakw;

.field private final zzddv:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalu;Lcom/google/android/gms/internal/ads/zzakw;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddt:Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzali;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    throw p1

    .line 22
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddt:Lcom/google/android/gms/internal/ads/zzalu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalu;->zza(Lcom/google/android/gms/internal/ads/zzalu;)Lcom/google/android/gms/internal/ads/zzall;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzall;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddv:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    throw p1

    .line 9
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalx;->zzddu:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void
.end method
