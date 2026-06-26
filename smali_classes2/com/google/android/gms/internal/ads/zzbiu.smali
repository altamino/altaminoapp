.class final synthetic Lcom/google/android/gms/internal/ads/zzbiu;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzdef:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzejz:Lcom/google/android/gms/internal/ads/zzbin;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzdsr:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzeka:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekb:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekc:Lcom/google/android/gms/internal/ads/zzdh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekd:Lcom/google/android/gms/internal/ads/zzbai;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzeke:Lcom/google/android/gms/internal/ads/zzadi;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekf:Lcom/google/android/gms/ads/internal/zzj;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekg:Lcom/google/android/gms/ads/internal/zza;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekh:Lcom/google/android/gms/internal/ads/zzwj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzdef:Landroid/content/Context;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzejz:Lcom/google/android/gms/internal/ads/zzbin;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzdsr:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzeka:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekb:Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekc:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekd:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzeke:Lcom/google/android/gms/internal/ads/zzadi;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekf:Lcom/google/android/gms/ads/internal/zzj;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekg:Lcom/google/android/gms/ads/internal/zza;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbiu;->zzekh:Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbio;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbio;-><init>()V

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbim;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbim;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbiv;

    move-object v2, v1

    move-object v4, v8

    move-object v0, v8

    move v8, v15

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbiv;-><init>(Lcom/google/android/gms/internal/ads/zzbim;Lcom/google/android/gms/internal/ads/zzbio;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)V

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbgr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbgr;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/internal/ads/zzbgz;Z)V

    return-object v2
.end method
