.class final Lcom/google/android/gms/internal/ads/zzdct;
.super Lcom/google/android/gms/internal/ads/zzdbt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbt<",
        "Lcom/google/android/gms/internal/ads/zzdbj;",
        "Lcom/google/android/gms/internal/ads/zzdhi;",
        "Lcom/google/android/gms/internal/ads/zzdhk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhi;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdhk;

    const-string/jumbo v3, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzguh:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdpk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhi;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzu(II)V

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

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdpk;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhi;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzatc()Lcom/google/android/gms/internal/ads/zzdhk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhk;->zzatf()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdbw;

    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbw;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdbj;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzatc()Lcom/google/android/gms/internal/ads/zzdhk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhk;->zzatg()Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcs;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;Lcom/google/android/gms/internal/ads/zzdbj;)V

    return-object v1
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdpk;)Lcom/google/android/gms/internal/ads/zzdpk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhk;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhi;->zzatd()Lcom/google/android/gms/internal/ads/zzdhi$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdhk;)Lcom/google/android/gms/internal/ads/zzdhi$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdhi$zza;->zzey(I)Lcom/google/android/gms/internal/ads/zzdhi$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhi;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzbr(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdhi;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhk;->zzbs(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdhk;

    move-result-object p1

    return-object p1
.end method
