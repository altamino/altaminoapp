.class public Lcom/google/android/gms/internal/ads/zzbkw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbkw$zza;
    }
.end annotation


# instance fields
.field private zzfec:Lcom/google/android/gms/internal/ads/zzbkw$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkw$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzfec:Lcom/google/android/gms/internal/ads/zzbkw$zza;

    return-void
.end method


# virtual methods
.method public final zzacx()Lcom/google/android/gms/internal/ads/zzavd;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzfec:Lcom/google/android/gms/internal/ads/zzbkw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw$zza;->zzacx()Lcom/google/android/gms/internal/ads/zzavd;

    move-result-object v0

    return-object v0
.end method

.method public final zzaeo()Lcom/google/android/gms/ads/internal/zza;
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzfec:Lcom/google/android/gms/internal/ads/zzbkw$zza;

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/zza;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw$zza;->zzacu()Lcom/google/android/gms/internal/ads/zzbgd;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw$zza;->zzacv()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzauw;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw$zza;->zzacx()Lcom/google/android/gms/internal/ads/zzavd;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzauw;-><init>(Lcom/google/android/gms/internal/ads/zzavd;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw$zza;->zzacw()Lcom/google/android/gms/internal/ads/zzwo;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzbcp;Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzwo;)V

    return-object v1
.end method
