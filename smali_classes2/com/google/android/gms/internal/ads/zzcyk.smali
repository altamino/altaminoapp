.class public final Lcom/google/android/gms/internal/ads/zzcyk;
.super Ljava/lang/Object;


# instance fields
.field private final zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzbrw:Lcom/google/android/gms/internal/ads/zzawm;

.field private final zzglr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcym;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgls:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzys:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzawm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzglr:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzys:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrw:Lcom/google/android/gms/internal/ads/zzawm;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdh;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/internal/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzdh;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgls:Lcom/google/android/gms/internal/ads/zzdh;

    return-void
.end method

.method private final zzamt()Lcom/google/android/gms/internal/ads/zzcym;
    .locals 7

    .line 15
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzys:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrw:Lcom/google/android/gms/internal/ads/zzawm;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrw:Lcom/google/android/gms/internal/ads/zzawm;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzve()Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzgls:Lcom/google/android/gms/internal/ads/zzdh;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcym;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxb;Lcom/google/android/gms/internal/ads/zzawu;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzcyl;)V

    return-object v6
.end method

.method private final zzfx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcym;
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzys:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasq;->zzv(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzasq;

    move-result-object v2

    .line 21
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzasq;->setAppPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzys:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaxf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrw:Lcom/google/android/gms/internal/ads/zzawm;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzaxf;-><init>(Lcom/google/android/gms/internal/ads/zzaxb;Lcom/google/android/gms/internal/ads/zzaxb;)V

    .line 29
    new-instance v4, Lcom/google/android/gms/internal/ads/zzawu;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazt;->zzwz()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxb;)V

    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcym;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdh;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzys:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/ads/internal/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzdh;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcym;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxb;Lcom/google/android/gms/internal/ads/zzawu;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzcyl;)V

    return-object p1

    .line 24
    :catch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcyk;->zzamt()Lcom/google/android/gms/internal/ads/zzcym;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzfw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcym;
    .locals 2

    if-nez p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcyk;->zzamt()Lcom/google/android/gms/internal/ads/zzcym;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzglr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzglr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcym;

    return-object p1

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcyk;->zzfx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcym;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzglr:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
