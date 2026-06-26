.class final Lcom/google/android/gms/internal/ads/zzdda;
.super Lcom/google/android/gms/internal/ads/zzdbt;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbt<",
        "Lcom/google/android/gms/internal/ads/zzdbp;",
        "Lcom/google/android/gms/internal/ads/zzdfv;",
        "Lcom/google/android/gms/internal/ads/zzdfr;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdbs<",
        "Lcom/google/android/gms/internal/ads/zzdbp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdfv;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdfr;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

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

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzguf:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfv;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfv;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzu(II)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfv;->zzaqu()Lcom/google/android/gms/internal/ads/zzdfx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdft;)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfr;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfr;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdft;)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdpk;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfv;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfv;->zzaqu()Lcom/google/android/gms/internal/ads/zzdfx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqp()Lcom/google/android/gms/internal/ads/zzdfz;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzara()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdgf;)Lcom/google/android/gms/internal/ads/zzdkt;

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfv;->zzaoi()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object p1

    .line 37
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzdkr;->zza(Lcom/google/android/gms/internal/ads/zzdkt;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    .line 38
    new-instance v8, Lcom/google/android/gms/internal/ads/zzddk;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqq()Lcom/google/android/gms/internal/ads/zzdfp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfp;->zzaqk()Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ads/zzddk;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;)V

    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkb;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzarb()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdmr;->toByteArray()[B

    move-result-object v5

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfz;->zzaoo()Lcom/google/android/gms/internal/ads/zzdgj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdgj;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqr()Lcom/google/android/gms/internal/ads/zzdfd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdfd;)Lcom/google/android/gms/internal/ads/zzdkv;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdkb;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-object p1
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfr;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfr;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqp()Lcom/google/android/gms/internal/ads/zzdfz;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfz;->zzara()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddi;->zza(Lcom/google/android/gms/internal/ads/zzdgf;)Lcom/google/android/gms/internal/ads/zzdkt;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkr;->zza(Lcom/google/android/gms/internal/ads/zzdkt;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkr;->zza(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 17
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 18
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdfx;->zzaqx()Lcom/google/android/gms/internal/ads/zzdfx$zza;

    move-result-object v2

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdfx$zza;->zzeh(I)Lcom/google/android/gms/internal/ads/zzdfx$zza;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfr;->zzaqn()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzdfx$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdft;)Lcom/google/android/gms/internal/ads/zzdfx$zza;

    move-result-object p1

    .line 22
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdfx$zza;->zzbd(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfx$zza;

    move-result-object p1

    .line 23
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdfx$zza;->zzbe(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfx$zza;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfx;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdfv;->zzaqv()Lcom/google/android/gms/internal/ads/zzdfv$zza;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdfv$zza;->zzeg(I)Lcom/google/android/gms/internal/ads/zzdfv$zza;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdfv$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdfx;)Lcom/google/android/gms/internal/ads/zzdfv$zza;

    move-result-object p1

    .line 28
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdfv$zza;->zzbb(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfv$zza;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfv;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdfv;->zzba(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfv;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdfr;->zzaz(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfr;

    move-result-object p1

    return-object p1
.end method
