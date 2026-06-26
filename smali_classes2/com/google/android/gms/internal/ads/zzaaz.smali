.class public final Lcom/google/android/gms/internal/ads/zzaaz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final zzbqn:Z

.field private final zzcgo:I

.field private final zzcgr:I

.field private final zzcgs:Ljava/lang/String;

.field private final zzcgu:Ljava/lang/String;

.field private final zzcgw:Landroid/os/Bundle;

.field private final zzcgy:Ljava/lang/String;

.field private final zzcha:Z

.field private final zzchc:I

.field private final zzchd:Ljava/lang/String;

.field private final zzcis:Landroid/os/Bundle;

.field private final zzcit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzciu:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzciv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzciw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcix:Lcom/google/android/gms/internal/ads/zzdak;

.field private final zzms:Ljava/util/Date;

.field private final zzmu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmw:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaba;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/internal/ads/zzaba;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaba;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zza(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzms:Ljava/util/Date;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzb(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgu:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzc(Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgo:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzmu:Ljava/util/Set;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zze(Lcom/google/android/gms/internal/ads/zzaba;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzmw:Landroid/location/Location;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzf(Lcom/google/android/gms/internal/ads/zzaba;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzbqn:Z

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzg(Lcom/google/android/gms/internal/ads/zzaba;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcis:Landroid/os/Bundle;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzh(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcit:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzi(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgs:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzj(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgy:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzk(Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgr:I

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzl(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciv:Ljava/util/Set;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzm(Lcom/google/android/gms/internal/ads/zzaba;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgw:Landroid/os/Bundle;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzn(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciw:Ljava/util/Set;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzo(Lcom/google/android/gms/internal/ads/zzaba;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcha:Z

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcix:Lcom/google/android/gms/internal/ads/zzdak;

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzp(Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzchc:I

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzq(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzchd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzms:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgu:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcis:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgw:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgo:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzmu:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzmw:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzbqn:Z

    return v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzchd:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcit:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcis:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgs:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcha:Z

    return v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciv:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazt;->zzbe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzpy()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpz()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzqa()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcit:Ljava/util/Map;

    return-object v0
.end method

.method public final zzqb()Landroid/os/Bundle;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcis:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzqc()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzcgr:I

    return v0
.end method

.method public final zzqd()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzciw:Ljava/util/Set;

    return-object v0
.end method

.method public final zzqe()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzchc:I

    return v0
.end method
