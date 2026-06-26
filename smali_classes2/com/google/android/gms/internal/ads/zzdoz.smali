.class final Lcom/google/android/gms/internal/ads/zzdoz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqc;


# static fields
.field private static final zzhjg:Lcom/google/android/gms/internal/ads/zzdpj;


# instance fields
.field private final zzhjf:Lcom/google/android/gms/internal/ads/zzdpj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhjg:Lcom/google/android/gms/internal/ads/zzdpj;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpb;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdpj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdoa;->zzaxq()Lcom/google/android/gms/internal/ads/zzdoa;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdoz;->zzays()Lcom/google/android/gms/internal/ads/zzdpj;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpb;-><init>([Lcom/google/android/gms/internal/ads/zzdpj;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdoz;-><init>(Lcom/google/android/gms/internal/ads/zzdpj;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdpj;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdod;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhjf:Lcom/google/android/gms/internal/ads/zzdpj;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdpi;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdpi;->zzayz()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhhs:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzays()Lcom/google/android/gms/internal/ads/zzdpj;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhjg:Lcom/google/android/gms/internal/ads/zzdpj;

    return-object v0
.end method


# virtual methods
.method public final zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdqb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdqb<",
            "TT;>;"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/zzdob;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqd;->zzh(Ljava/lang/Class;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhjf:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdpj;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdpi;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzaza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazm()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnr;->zzaxg()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v0

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzazb()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdpq;->zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazk()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnr;->zzaxh()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v0

    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzazb()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdpq;->zza(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdoz;->zza(Lcom/google/android/gms/internal/ads/zzdpi;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpu;->zzaze()Lcom/google/android/gms/internal/ads/zzdps;

    move-result-object v4

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdou;->zzayr()Lcom/google/android/gms/internal/ads/zzdou;

    move-result-object v5

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazm()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnr;->zzaxg()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v7

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdph;->zzayx()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v8

    move-object v2, p1

    .line 30
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzdps;Lcom/google/android/gms/internal/ads/zzdou;Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdpo;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpu;->zzaze()Lcom/google/android/gms/internal/ads/zzdps;

    move-result-object v4

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdou;->zzayr()Lcom/google/android/gms/internal/ads/zzdou;

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazm()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v6

    const/4 v7, 0x0

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdph;->zzayx()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v8

    move-object v2, p1

    .line 36
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzdps;Lcom/google/android/gms/internal/ads/zzdou;Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdpo;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdoz;->zza(Lcom/google/android/gms/internal/ads/zzdpi;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpu;->zzazd()Lcom/google/android/gms/internal/ads/zzdps;

    move-result-object v4

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdou;->zzayq()Lcom/google/android/gms/internal/ads/zzdou;

    move-result-object v5

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazk()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v6

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnr;->zzaxh()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v7

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdph;->zzayw()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v8

    move-object v2, p1

    .line 45
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzdps;Lcom/google/android/gms/internal/ads/zzdou;Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdpo;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpu;->zzazd()Lcom/google/android/gms/internal/ads/zzdps;

    move-result-object v4

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdou;->zzayq()Lcom/google/android/gms/internal/ads/zzdou;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqd;->zzazl()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v6

    const/4 v7, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdph;->zzayw()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v8

    move-object v2, p1

    .line 51
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdpo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzdps;Lcom/google/android/gms/internal/ads/zzdou;Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdpo;

    move-result-object p1

    return-object p1
.end method
