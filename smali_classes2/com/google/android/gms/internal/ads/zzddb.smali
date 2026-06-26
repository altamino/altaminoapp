.class final Lcom/google/android/gms/internal/ads/zzddb;
.super Lcom/google/android/gms/internal/ads/zzdbt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbt<",
        "Lcom/google/android/gms/internal/ads/zzdbq;",
        "Lcom/google/android/gms/internal/ads/zzdfx;",
        "Lcom/google/android/gms/internal/ads/zzdgh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdfx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdgh;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzgug:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfx;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzu(II)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdft;)V

    return-void
.end method

.method protected final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    return-void
.end method

.method protected final synthetic zze(Lcom/google/android/gms/internal/ads/zzdpk;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfx;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqp()Lcom/google/android/gms/internal/ads/zzdfz;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzara()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdgf;)Lcom/google/android/gms/internal/ads/zzdkt;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqf()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqg()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object p1

    .line 19
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdkr;->zza(Lcom/google/android/gms/internal/ads/zzdkt;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 20
    new-instance v9, Lcom/google/android/gms/internal/ads/zzddk;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqq()Lcom/google/android/gms/internal/ads/zzdfp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfp;->zzaqk()Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/zzddk;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;)V

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkc;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzarb()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object v6

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzaoo()Lcom/google/android/gms/internal/ads/zzdgj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdgj;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqr()Lcom/google/android/gms/internal/ads/zzdfd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdfd;)Lcom/google/android/gms/internal/ads/zzdkv;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzdkc;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-object p1
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzbc(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfx;

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

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgh;->zzbj(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p1

    return-object p1
.end method
