.class final Lcom/google/android/gms/internal/ads/zzaky;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbbv<",
        "Lcom/google/android/gms/internal/ads/zzalf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdcv:Lcom/google/android/gms/internal/ads/zzakw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdcv:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdcv:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakw;->zza(Lcom/google/android/gms/internal/ads/zzakw;)Lcom/google/android/gms/internal/ads/zzala;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzala;->zzry()V

    return-void
.end method
