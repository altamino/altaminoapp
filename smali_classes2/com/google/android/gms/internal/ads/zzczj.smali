.class public final Lcom/google/android/gms/internal/ads/zzczj;
.super Ljava/lang/Object;


# instance fields
.field private final zzgme:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final synthetic zzgmk:Lcom/google/android/gms/internal/ads/zzczf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzczf;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgme:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzczf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzczg;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczj;-><init>(Lcom/google/android/gms/internal/ads/zzczf;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzczl<",
            "TO;>;"
        }
    .end annotation

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzczl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgme:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczf;->zzand()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzczl;-><init>(Lcom/google/android/gms/internal/ads/zzczf;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzczg;)V

    return-object v8
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzczd;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczd;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzczl<",
            "*>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzczk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzczk;-><init>(Lcom/google/android/gms/internal/ads/zzczd;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzczl<",
            "TO;>;"
        }
    .end annotation

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/zzczl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgme:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczf;->zzand()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzczl;-><init>(Lcom/google/android/gms/internal/ads/zzczf;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzczg;)V

    return-object v8
.end method

.method public final zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzczl<",
            "TO;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Lcom/google/android/gms/internal/ads/zzczf;)Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    return-object p1
.end method
