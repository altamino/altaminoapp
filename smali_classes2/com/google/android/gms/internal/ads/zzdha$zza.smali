.class public final Lcom/google/android/gms/internal/ads/zzdha$zza;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzdha;",
        "Lcom/google/android/gms/internal/ads/zzdha$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdha;->zzasl()Lcom/google/android/gms/internal/ads/zzdha;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhb;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdha$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdha$zzb;)Lcom/google/android/gms/internal/ads/zzdha$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdha;->zza(Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzdha$zzb;)V

    return-object p0
.end method

.method public final zzes(I)Lcom/google/android/gms/internal/ads/zzdha$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdha;->zza(Lcom/google/android/gms/internal/ads/zzdha;I)V

    return-object p0
.end method
