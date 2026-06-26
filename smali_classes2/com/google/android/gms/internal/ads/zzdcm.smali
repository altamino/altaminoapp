.class final Lcom/google/android/gms/internal/ads/zzdcm;
.super Lcom/google/android/gms/internal/ads/zzdbt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbt<",
        "Lcom/google/android/gms/internal/ads/zzdbj;",
        "Lcom/google/android/gms/internal/ads/zzddr;",
        "Lcom/google/android/gms/internal/ads/zzddt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzddr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzddt;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdcn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Lcom/google/android/gms/internal/ads/zzdbs;)V

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

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzgue:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/ads/zzddr;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddr;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzu(II)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/zzddt;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddt;->zzaoe()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzded;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzfg(I)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdpk;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzddr;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkw;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddr;->zzaoa()Lcom/google/android/gms/internal/ads/zzdeb;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzdlk;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    .line 25
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdlk;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddr;->zzaob()Lcom/google/android/gms/internal/ads/zzdgl;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzdby;

    const-string/jumbo v4, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdby;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddr;->zzaob()Lcom/google/android/gms/internal/ads/zzdgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgl;->zzarj()Lcom/google/android/gms/internal/ads/zzdgp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgp;->zzarq()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdkw;-><init>(Lcom/google/android/gms/internal/ads/zzdlk;Lcom/google/android/gms/internal/ads/zzdby;I)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzddt;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddt;->zzaoe()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object v0

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdeb;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddt;->zzaof()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object p1

    const-string/jumbo v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgl;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddr;->zzaoc()Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdeb;)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgl;)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddr$zza;->zzdu(I)Lcom/google/android/gms/internal/ads/zzddr$zza;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddr;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddr;->zzu(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzddr;

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

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzddt;->zzv(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzddt;

    move-result-object p1

    return-object p1
.end method
