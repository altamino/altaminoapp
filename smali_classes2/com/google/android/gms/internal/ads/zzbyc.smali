.class public final Lcom/google/android/gms/internal/ads/zzbyc;
.super Ljava/lang/Object;


# instance fields
.field private final zzfmo:Lorg/json/JSONObject;

.field private final zzfnk:Lcom/google/android/gms/internal/ads/zzccj;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzccj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfmo:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfnk:Lcom/google/android/gms/internal/ads/zzccj;

    return-void
.end method


# virtual methods
.method public final zzaho()Lorg/json/JSONObject;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfmo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzahp()Lcom/google/android/gms/internal/ads/zzccj;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyc;->zzfnk:Lcom/google/android/gms/internal/ads/zzccj;

    return-object v0
.end method
