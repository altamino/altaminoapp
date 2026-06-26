.class public final Lcom/google/android/gms/internal/ads/zzaly;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private zzddw:Lcom/google/android/gms/internal/ads/zzakh;

.field private zzddx:Lcom/google/android/gms/internal/ads/zzbbr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbr<",
            "Lcom/google/android/gms/internal/ads/zzalf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddw:Lcom/google/android/gms/internal/ads/zzakh;

    return-void
.end method

.method private final zzsd()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddw:Lcom/google/android/gms/internal/ads/zzakh;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakh;->zzb(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzalz;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzalz;-><init>(Lcom/google/android/gms/internal/ads/zzbbr;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzama;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzama;-><init>(Lcom/google/android/gms/internal/ads/zzbbr;)V

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbbv;Lcom/google/android/gms/internal/ads/zzbbt;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzamd;
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaly;->zzsd()V

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamd;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalf;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaly;->zzsd()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamb;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 20
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalf;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 24
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbam;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzddx:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method
