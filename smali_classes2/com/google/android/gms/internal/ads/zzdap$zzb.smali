.class public final Lcom/google/android/gms/internal/ads/zzdap$zzb;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzdap;",
        "Lcom/google/android/gms/internal/ads/zzdap$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdap;->zzanj()Lcom/google/android/gms/internal/ads/zzdap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdap$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdap$zza;)Lcom/google/android/gms/internal/ads/zzdap$zzb;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdap;->zza(Lcom/google/android/gms/internal/ads/zzdap;Lcom/google/android/gms/internal/ads/zzdap$zza;)V

    return-object p0
.end method

.method public final zzgd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdap$zzb;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdap;->zza(Lcom/google/android/gms/internal/ads/zzdap;Ljava/lang/String;)V

    return-object p0
.end method
