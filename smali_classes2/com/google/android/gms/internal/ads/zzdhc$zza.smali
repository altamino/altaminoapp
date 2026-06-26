.class public final Lcom/google/android/gms/internal/ads/zzdhc$zza;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzdhc;",
        "Lcom/google/android/gms/internal/ads/zzdhc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhc;->zzast()Lcom/google/android/gms/internal/ads/zzdhc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhd;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdhc$zzb;)Lcom/google/android/gms/internal/ads/zzdhc$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhc;->zza(Lcom/google/android/gms/internal/ads/zzdhc;Lcom/google/android/gms/internal/ads/zzdhc$zzb;)V

    return-object p0
.end method

.method public final zzev(I)Lcom/google/android/gms/internal/ads/zzdhc$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhc;->zza(Lcom/google/android/gms/internal/ads/zzdhc;I)V

    return-object p0
.end method
