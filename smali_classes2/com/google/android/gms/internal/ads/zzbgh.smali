.class public final Lcom/google/android/gms/internal/ads/zzbgh;
.super Lcom/google/android/gms/internal/ads/zzbgl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Lcom/google/android/gms/internal/ads/zzbdf;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgh;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzfa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhn;
    .locals 10

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbft;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbft;->zzdyb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzctr:Lcom/google/android/gms/internal/ads/zzacj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbft;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Lcom/google/android/gms/internal/ads/zzbgh;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzbei;)V

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgh;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/webm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjg;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziv;-><init>()V

    :goto_1
    move-object v7, v0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzclw:Lcom/google/android/gms/internal/ads/zzacj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzig;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzid;II)V

    return-object v0
.end method

.method final synthetic zzg(ZJ)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->zzeht:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v0, :cond_0

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgj;-><init>(Lcom/google/android/gms/internal/ads/zzbdf;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected final zzzw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
