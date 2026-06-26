.class final synthetic Lcom/google/android/gms/internal/ads/zzcas;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfqz:Lcom/google/android/gms/internal/ads/zzcaq;

.field private final zzfrc:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfrd:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfre:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfrf:Lorg/json/JSONObject;

.field private final zzfrg:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfrh:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfri:Lcom/google/android/gms/internal/ads/zzbbh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcaq;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfqz:Lcom/google/android/gms/internal/ads/zzcaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrc:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrd:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfre:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrf:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrg:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrh:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfri:Lcom/google/android/gms/internal/ads/zzbbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrc:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrd:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfre:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrf:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrg:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfrh:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzfri:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyt;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->setImages(Ljava/util/List;)V

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 6
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaea;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzaea;)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcau;->zzi(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zze(Ljava/util/List;)V

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcau;->zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzabj;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzabj;)V

    .line 11
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgz;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzh(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzz(Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzaar;)V

    .line 16
    :cond_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgz;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzi(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 19
    :cond_1
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcbg;

    .line 20
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzcbg;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcbg;->zzcc:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcbg;->zzfru:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadw;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcbg;->zzcc:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcbg;->zzfrt:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method
