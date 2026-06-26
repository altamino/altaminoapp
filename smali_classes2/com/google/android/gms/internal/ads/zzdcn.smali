.class final Lcom/google/android/gms/internal/ads/zzdcn;
.super Lcom/google/android/gms/internal/ads/zzdbt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbt<",
        "Lcom/google/android/gms/internal/ads/zzdlk;",
        "Lcom/google/android/gms/internal/ads/zzdeb;",
        "Lcom/google/android/gms/internal/ads/zzded;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdlk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdeb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzded;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdef;->zzaoy()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdef;->zzaoy()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzans()Lcom/google/android/gms/internal/ads/zzdgr$zzb;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzgue:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdeb;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzu(II)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaoi()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmr;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzfg(I)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaos()Lcom/google/android/gms/internal/ads/zzdef;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcn;->zza(Lcom/google/android/gms/internal/ads/zzdef;)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/google/android/gms/internal/ads/zzded;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzfg(I)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->zzaos()Lcom/google/android/gms/internal/ads/zzdef;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcn;->zza(Lcom/google/android/gms/internal/ads/zzdef;)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdpk;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdeb;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjj;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaoi()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaos()Lcom/google/android/gms/internal/ads/zzdef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdef;->zzaoy()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdjj;-><init>([BI)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzded;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaot()Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->zzaos()Lcom/google/android/gms/internal/ads/zzdef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdeb$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdef;)Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlo;->zzff(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdeb$zza;->zzab(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdeb$zza;->zzdw(I)Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdeb;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaa(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdeb;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzded;->zzac(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzded;

    move-result-object p1

    return-object p1
.end method
