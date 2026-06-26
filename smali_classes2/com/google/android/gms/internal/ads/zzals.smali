.class final Lcom/google/android/gms/internal/ads/zzals;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzayp<",
        "Lcom/google/android/gms/internal/ads/zzajw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzajw;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzczw:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzalf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzdae:Lcom/google/android/gms/internal/ads/zzahu;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzalf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-void
.end method
