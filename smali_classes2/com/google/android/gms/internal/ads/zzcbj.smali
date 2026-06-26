.class final synthetic Lcom/google/android/gms/internal/ads/zzcbj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzfga:Lorg/json/JSONObject;

.field private final zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbi;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbj;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbj;->zzfga:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbj;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbj;->zzfga:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcbi;->zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
