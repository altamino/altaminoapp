.class public final Lcom/google/android/gms/internal/ads/zzdhi$zza;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzdhi;",
        "Lcom/google/android/gms/internal/ads/zzdhi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhi;->zzate()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhj;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdhk;)Lcom/google/android/gms/internal/ads/zzdhi$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zza(Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdhk;)V

    return-object p0
.end method

.method public final zzey(I)Lcom/google/android/gms/internal/ads/zzdhi$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdhi;->zza(Lcom/google/android/gms/internal/ads/zzdhi;I)V

    return-object p0
.end method
