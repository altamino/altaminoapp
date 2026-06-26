.class public final Lcom/google/android/gms/internal/ads/zzdeb$zza;
.super Lcom/google/android/gms/internal/ads/zzdob$zza;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob$zza<",
        "Lcom/google/android/gms/internal/ads/zzdeb;",
        "Lcom/google/android/gms/internal/ads/zzdeb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaov()Lcom/google/android/gms/internal/ads/zzdeb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdec;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdeb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzab(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdeb$zza;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdeb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zza(Lcom/google/android/gms/internal/ads/zzdeb;Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdef;)Lcom/google/android/gms/internal/ads/zzdeb$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdeb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zza(Lcom/google/android/gms/internal/ads/zzdeb;Lcom/google/android/gms/internal/ads/zzdef;)V

    return-object p0
.end method

.method public final zzdw(I)Lcom/google/android/gms/internal/ads/zzdeb$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaxw()V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzhhh:Lcom/google/android/gms/internal/ads/zzdob;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdeb;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdeb;->zza(Lcom/google/android/gms/internal/ads/zzdeb;I)V

    return-object p0
.end method
