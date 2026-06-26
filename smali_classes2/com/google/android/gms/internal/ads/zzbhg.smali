.class final synthetic Lcom/google/android/gms/internal/ads/zzbhg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzdef:Landroid/content/Context;

.field private final zzejw:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzejx:Lcom/google/android/gms/ads/internal/zza;

.field private final zzejy:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/ads/internal/zza;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzdef:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejw:Lcom/google/android/gms/internal/ads/zzbai;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejx:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzdef:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzdcf:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejw:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejx:Lcom/google/android/gms/ads/internal/zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhg;->zzejy:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlh()Lcom/google/android/gms/internal/ads/zzbhf;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbin;->zzabu()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwj;->zznl()Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object v10

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>(Lcom/google/android/gms/internal/ads/zzbbq;)V

    .line 9
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbii;->zza(Lcom/google/android/gms/internal/ads/zzbij;)V

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
