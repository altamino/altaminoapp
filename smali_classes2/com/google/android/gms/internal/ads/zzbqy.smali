.class public Lcom/google/android/gms/internal/ads/zzbqy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbqy$zza;
    }
.end annotation


# instance fields
.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfju:Ljava/lang/String;

.field private zzfjv:Landroid/os/Bundle;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqy$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzbqy$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzlj:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbqy$zza;)Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbqy$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjv:Landroid/os/Bundle;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbqy$zza;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfju:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbqy$zza;Lcom/google/android/gms/internal/ads/zzbqz;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqy;-><init>(Lcom/google/android/gms/internal/ads/zzbqy$zza;)V

    return-void
.end method


# virtual methods
.method final zzagd()Lcom/google/android/gms/internal/ads/zzbqy$zza;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqy$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqy$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzlj:Landroid/content/Context;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfju:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzfg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjv:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v0

    return-object v0
.end method

.method final zzage()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    return-object v0
.end method

.method final zzagf()Landroid/os/Bundle;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfjv:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzagg()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfju:Ljava/lang/String;

    return-object v0
.end method

.method final zzbs(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfju:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzlj:Landroid/content/Context;

    return-object p1
.end method
