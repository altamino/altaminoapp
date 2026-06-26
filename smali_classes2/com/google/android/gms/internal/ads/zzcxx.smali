.class public final Lcom/google/android/gms/internal/ads/zzcxx;
.super Ljava/lang/Object;


# instance fields
.field private zzbqn:Z

.field private zzdgs:Lcom/google/android/gms/internal/ads/zzady;

.field private zzdll:Lcom/google/android/gms/internal/ads/zzyd;

.field private zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

.field private zzghg:Lcom/google/android/gms/internal/ads/zzxz;

.field private zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

.field private zzgla:Lcom/google/android/gms/internal/ads/zzacd;

.field private zzglb:Ljava/lang/String;

.field private zzglc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzgld:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzgle:Ljava/lang/String;

.field private zzglf:Ljava/lang/String;

.field private zzglg:I

.field private zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzgli:Lcom/google/android/gms/internal/ads/zzzs;

.field public final zzglj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglg:I

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglj:Ljava/util/Set;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzyd;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzzy;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglc:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgld:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzcxx;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglg:I

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzzs;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgli:Lcom/google/android/gms/internal/ads/zzzs;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzaiy;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzcxx;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzbqn:Z

    return p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzacd;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    return-object p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzady;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    return-object p0
.end method


# virtual methods
.method public final zzamo()Lcom/google/android/gms/internal/ads/zzxz;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    return-object v0
.end method

.method public final zzamp()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzamq()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglb:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzcxw;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzbqn:Z

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzkt()Lcom/google/android/gms/internal/ads/zzzs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgli:Lcom/google/android/gms/internal/ads/zzzs;

    :cond_0
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzady;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaiy;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 2

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzacd;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzacd;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    return-object p0
.end method

.method public final zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcxx;"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglc:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzbc(Z)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzbqn:Z

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacd;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    return-object p0
.end method

.method public final zzc(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcxx;"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgld:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzzy;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

    return-object p0
.end method

.method public final zzdp(I)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglg:I

    return-object p0
.end method

.method public final zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzgle:Ljava/lang/String;

    return-object p0
.end method

.method public final zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    return-object p0
.end method

.method public final zzpn()Lcom/google/android/gms/internal/ads/zzyd;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    return-object v0
.end method
