.class public final Lcom/google/android/gms/internal/ads/zzchq;
.super Ljava/lang/Object;


# instance fields
.field private final zzffi:Ljava/util/concurrent/Executor;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfxa:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzcxv;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfxa:Lcom/google/android/gms/internal/ads/zzbai;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzffi:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected final zzakg()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlt()Lcom/google/android/gms/internal/ads/zzalk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzlj:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfxa:Lcom/google/android/gms/internal/ads/zzbai;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    const-string v2, "google.afma.response.normalize"

    .line 9
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzchb:Lcom/google/android/gms/internal/ads/zzxt;

    const-string v2, ""

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzchr;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzchr;-><init>(Lcom/google/android/gms/internal/ads/zzchq;Lcom/google/android/gms/internal/ads/zzxt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzffi:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchs;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzchs;-><init>(Lcom/google/android/gms/internal/ads/zzalj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzffi:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcht;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcht;-><init>(Lcom/google/android/gms/internal/ads/zzchq;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzffi:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzn(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxr;-><init>(Lcom/google/android/gms/internal/ads/zzcxv;)V

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxs;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzcxs;

    move-result-object p1

    .line 22
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Lcom/google/android/gms/internal/ads/zzcxr;Lcom/google/android/gms/internal/ads/zzcxs;)V

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    return-object p1
.end method
