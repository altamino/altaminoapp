.class public final Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzwt$zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzwt$zzv;",
        "Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwt$zzv;->zzoq()Lcom/google/android/gms/internal/ads/zzwt$zzv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwu;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzcm(I)Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt$zzv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzwt$zzv;->zza(Lcom/google/android/gms/internal/ads/zzwt$zzv;I)V

    return-object p0
.end method

.method public final zzoo()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt$zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwt$zzv;->zzoo()Z

    move-result v0

    return v0
.end method

.method public final zzr(Z)Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt$zzv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzwt$zzv;->zza(Lcom/google/android/gms/internal/ads/zzwt$zzv;Z)V

    return-object p0
.end method
