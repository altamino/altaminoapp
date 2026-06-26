.class final Lcom/google/android/gms/internal/ads/zzddk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdka;


# instance fields
.field private final zzgqe:Ljava/lang/String;

.field private final zzgqf:I

.field private zzgqg:Lcom/google/android/gms/internal/ads/zzdet;

.field private zzgqh:Lcom/google/android/gms/internal/ads/zzddr;

.field private zzgqi:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdgw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgw;->zzart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgw;->zzaru()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdev;->zzal(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdev;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zzb(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqg:Lcom/google/android/gms/internal/ads/zzdet;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdev;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdok; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgw;->zzaru()Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzddt;->zzv(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzddt;

    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zzb(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqh:Lcom/google/android/gms/internal/ads/zzddr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddt;->zzaoe()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqi:I

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddt;->zzaof()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgn;->getKeySize()I

    move-result p1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqi:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdok; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 20
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzanz()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I

    return v0
.end method

.method public final zzm([B)Lcom/google/android/gms/internal/ads/zzdbj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbj;

    array-length v1, p1

    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I

    if-ne v1, v2, :cond_2

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    const-string/jumbo v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdet;->zzapn()Lcom/google/android/gms/internal/ads/zzdet$zza;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqg:Lcom/google/android/gms/internal/ads/zzdet;

    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdet$zza;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I

    .line 29
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdmr;->zzi([BII)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdet$zza;->zzak(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdet$zza;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdet;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbj;

    return-object p1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqi:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 34
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqi:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqf:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdeb;->zzaot()Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqh:Lcom/google/android/gms/internal/ads/zzddr;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzddr;->zzaoa()Lcom/google/android/gms/internal/ads/zzdeb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdeb$zza;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdeb$zza;->zzab(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdeb$zza;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdeb;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgl;->zzark()Lcom/google/android/gms/internal/ads/zzdgl$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqh:Lcom/google/android/gms/internal/ads/zzddr;

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzddr;->zzaob()Lcom/google/android/gms/internal/ads/zzdgl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdgl$zza;

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzdgl$zza;->zzbl(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdgl$zza;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgl;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddr;->zzaoc()Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqh:Lcom/google/android/gms/internal/ads/zzddr;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzddr;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzdu(I)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdeb;)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgl;)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddr;

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgqe:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbj;

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
