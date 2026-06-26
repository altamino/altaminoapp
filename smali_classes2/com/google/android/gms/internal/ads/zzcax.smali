.class final synthetic Lcom/google/android/gms/internal/ads/zzcax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbam;


# instance fields
.field private final zzfga:Lorg/json/JSONObject;

.field private final zzfrp:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->zzfrp:Lcom/google/android/gms/internal/ads/zzcau;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcax;->zzfga:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->zzfrp:Lcom/google/android/gms/internal/ads/zzcau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->zzfga:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcau;->zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    return-object p1
.end method
