.class final synthetic Lcom/google/android/gms/internal/ads/zzamb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

.field private final zzddy:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamb;->zzddy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamb;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamb;->zzddy:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamb;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalf;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    return-object p1
.end method
