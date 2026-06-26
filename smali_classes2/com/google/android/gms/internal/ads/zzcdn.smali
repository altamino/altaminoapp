.class public final Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;


# instance fields
.field private final zzbrt:Lcom/google/android/gms/internal/ads/zzbhf;

.field private final zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzejd:Lcom/google/android/gms/internal/ads/zzwj;

.field private final zzeko:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzekq:Lcom/google/android/gms/ads/internal/zza;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzftg:Lcom/google/android/gms/internal/ads/zzbtb;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzbtb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzbrt:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzlj:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzeko:Lcom/google/android/gms/internal/ads/zzdh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzekq:Lcom/google/android/gms/ads/internal/zza;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzftg:Lcom/google/android/gms/internal/ads/zzbtb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcdn;)Lcom/google/android/gms/internal/ads/zzbtb;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzftg:Lcom/google/android/gms/internal/ads/zzbtb;

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbgz;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbhj;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzlj:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbin;->zzb(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzyd;->zzaap:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzeko:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/zzcdo;-><init>(Lcom/google/android/gms/internal/ads/zzcdn;)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzekq:Lcom/google/android/gms/ads/internal/zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object p1

    return-object p1
.end method
