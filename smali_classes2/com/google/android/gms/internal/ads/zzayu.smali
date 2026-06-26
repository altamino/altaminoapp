.class public final Lcom/google/android/gms/internal/ads/zzayu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static zzdxh:Lcom/google/android/gms/internal/ads/zzv;

.field private static final zzdxi:Ljava/lang/Object;

.field private static final zzdxj:Lcom/google/android/gms/internal/ads/zzayy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzayy<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxi:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxj:Lcom/google/android/gms/internal/ads/zzayy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzbd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzv;

    return-void
.end method

.method private static zzbd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzv;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxi:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzdxh:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v1, :cond_1

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacu;->initialize(Landroid/content/Context;)V

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzctv:Lcom/google/android/gms/internal/ads/zzacj;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzayl;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzat;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzat;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>(Lcom/google/android/gms/internal/ads/zzaj;)V

    .line 31
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v3, "volley"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    new-instance p0, Lcom/google/android/gms/internal/ads/zzv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Lcom/google/android/gms/internal/ads/zzb;Lcom/google/android/gms/internal/ads/zzm;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzv;->start()V

    .line 35
    :goto_0
    sput-object p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxh:Lcom/google/android/gms/internal/ads/zzv;

    .line 36
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxh:Lcom/google/android/gms/internal/ads/zzv;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzeg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzp;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzdxh:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaza;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzr;)Lcom/google/android/gms/internal/ads/zzr;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 9
    new-instance v10, Lcom/google/android/gms/internal/ads/zzayz;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzayz;-><init>(Lcom/google/android/gms/internal/ads/zzayv;)V

    .line 10
    new-instance v6, Lcom/google/android/gms/internal/ads/zzayw;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/internal/ads/zzayw;-><init>(Lcom/google/android/gms/internal/ads/zzayu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayz;)V

    .line 11
    new-instance v12, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzazx;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v13, Lcom/google/android/gms/internal/ads/zzayx;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzayx;-><init>(Lcom/google/android/gms/internal/ads/zzayu;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzz;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzazx;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazx;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzayx;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzayx;->zzg()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zza; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 17
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxh:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzr;)Lcom/google/android/gms/internal/ads/zzr;

    return-object v10
.end method

.method public final zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
