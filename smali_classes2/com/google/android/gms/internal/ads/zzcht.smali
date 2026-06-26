.class final synthetic Lcom/google/android/gms/internal/ads/zzcht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzfxb:Lcom/google/android/gms/internal/ads/zzchq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcht;->zzfxb:Lcom/google/android/gms/internal/ads/zzchq;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcht;->zzfxb:Lcom/google/android/gms/internal/ads/zzchq;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchq;->zzn(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
