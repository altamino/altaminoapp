.class public final Lcom/google/android/gms/internal/ads/zzcjr;
.super Ljava/lang/Object;


# instance fields
.field private zzdld:Lcom/google/android/gms/internal/ads/zzbai;

.field private zzfyx:Lcom/google/android/gms/internal/ads/zzcjc;

.field private zzfzh:Lcom/google/android/gms/internal/ads/zzwj;

.field private zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzcjc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzdld:Lcom/google/android/gms/internal/ads/zzbai;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfzh:Lcom/google/android/gms/internal/ads/zzwj;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfyx:Lcom/google/android/gms/internal/ads/zzcjc;

    return-void
.end method


# virtual methods
.method public final zzakp()V
    .locals 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfyx:Lcom/google/android/gms/internal/ads/zzcjc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcjs;-><init>(Lcom/google/android/gms/internal/ads/zzcjr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjc;->zza(Lcom/google/android/gms/internal/ads/zzczc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjq;->zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwt$zzi;->zzny()Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzlj:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzbr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v1

    const/4 v2, 0x1

    .line 17
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcjq;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzch(I)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v0

    const/4 v1, 0x2

    .line 19
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcjq;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzci(I)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;->zzez(J)Lcom/google/android/gms/internal/ads/zzwt$zzi$zzb;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwt$zzi;

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfzh:Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzcjt;-><init>(Lcom/google/android/gms/internal/ads/zzwt$zzi;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxo;-><init>()V

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzdld:Lcom/google/android/gms/internal/ads/zzbai;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbai;->zzdzc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzcfo:Ljava/lang/Integer;

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzdld:Lcom/google/android/gms/internal/ads/zzbai;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbai;->zzdzd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzcfp:Ljava/lang/Integer;

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzdld:Lcom/google/android/gms/internal/ads/zzbai;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbai;->zzdze:Z

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzcfq:Ljava/lang/Integer;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfzh:Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcju;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzcju;-><init>(Lcom/google/android/gms/internal/ads/zzxo;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzfzh:Lcom/google/android/gms/internal/ads/zzwj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;->zzbyz:Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_contents"

    .line 30
    invoke-virtual {p1, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "total"

    .line 32
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "failed_requests"

    aput-object v7, v6, v4

    const-string v7, "statistic_name = ?"

    const-string v8, "offline_signal_statistics"

    .line 33
    invoke-virtual {p1, v8, v1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "total_requests"

    aput-object v3, v2, v4

    .line 36
    invoke-virtual {p1, v8, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v0
.end method
