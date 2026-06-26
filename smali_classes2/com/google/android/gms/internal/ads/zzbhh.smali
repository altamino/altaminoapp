.class final synthetic Lcom/google/android/gms/internal/ads/zzbhh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdef:Landroid/content/Context;

.field private final zzdsr:Ljava/lang/String;

.field private final zzejz:Lcom/google/android/gms/internal/ads/zzbin;

.field private final zzeka:Z

.field private final zzekb:Z

.field private final zzekc:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzekd:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzeke:Lcom/google/android/gms/internal/ads/zzadi;

.field private final zzekf:Lcom/google/android/gms/ads/internal/zzj;

.field private final zzekg:Lcom/google/android/gms/ads/internal/zza;

.field private final zzekh:Lcom/google/android/gms/internal/ads/zzwj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzdef:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzejz:Lcom/google/android/gms/internal/ads/zzbin;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzdsr:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeka:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekb:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekc:Lcom/google/android/gms/internal/ads/zzdh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekd:Lcom/google/android/gms/internal/ads/zzbai;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeke:Lcom/google/android/gms/internal/ads/zzadi;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekf:Lcom/google/android/gms/ads/internal/zzj;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekg:Lcom/google/android/gms/ads/internal/zza;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekh:Lcom/google/android/gms/internal/ads/zzwj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzdef:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzejz:Lcom/google/android/gms/internal/ads/zzbin;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzdsr:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeka:Z

    iget-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekb:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekc:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekd:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeke:Lcom/google/android/gms/internal/ads/zzadi;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekf:Lcom/google/android/gms/ads/internal/zzj;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekg:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzekh:Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    new-instance v13, Lcom/google/android/gms/internal/ads/zzbhk;

    move v4, v11

    move-object v10, v12

    .line 3
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzbhm;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzbhm;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzli()Lcom/google/android/gms/internal/ads/zzaxo;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzaxo;->zza(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzwj;Z)Lcom/google/android/gms/internal/ads/zzbha;

    move-result-object v0

    .line 7
    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgr;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzbgr;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v13
.end method
