.class final synthetic Lcom/google/android/gms/internal/ads/zzclh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwz;


# instance fields
.field private final zzbxg:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzgan:Lcom/google/android/gms/internal/ads/zzcle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzgan:Lcom/google/android/gms/internal/ads/zzcle;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzbxg:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzgan:Lcom/google/android/gms/internal/ads/zzcle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzbxg:Lcom/google/android/gms/internal/ads/zzbbr;

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcle;->zza(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbbr;ZLandroid/content/Context;)V

    return-void
.end method
