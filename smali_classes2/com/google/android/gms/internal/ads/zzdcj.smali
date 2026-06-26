.class public final Lcom/google/android/gms/internal/ads/zzdcj;
.super Ljava/lang/Object;


# static fields
.field public static final zzgpt:Lcom/google/android/gms/internal/ads/zzdho;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzgpu:Lcom/google/android/gms/internal/ads/zzdho;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzgpv:Lcom/google/android/gms/internal/ads/zzdho;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddo;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    const-string v1, "AesCtrHmacAeadKey"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Aead"

    const-string v5, "TinkAead"

    .line 7
    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v6

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v6, "AesEaxKey"

    .line 9
    invoke-static {v5, v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v7

    .line 10
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v7, "AesGcmKey"

    .line 11
    invoke-static {v5, v4, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v8

    .line 12
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v8, "ChaCha20Poly1305Key"

    .line 13
    invoke-static {v5, v4, v8, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v9

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v9, "KmsAeadKey"

    .line 15
    invoke-static {v5, v4, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v10

    .line 16
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v10, "KmsEnvelopeAeadKey"

    .line 17
    invoke-static {v5, v4, v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v11

    .line 18
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v11, "TINK_AEAD_1_0_0"

    .line 19
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcj;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/internal/ads/zzdcj;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    const-string v11, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcj;->zzgpu:Lcom/google/android/gms/internal/ads/zzdho;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/internal/ads/zzddo;->zzgpv:Lcom/google/android/gms/internal/ads/zzdho;

    .line 23
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    .line 24
    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 26
    invoke-static {v5, v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 28
    invoke-static {v5, v4, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 30
    invoke-static {v5, v4, v8, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 32
    invoke-static {v5, v4, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 34
    invoke-static {v5, v4, v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v1, "XChaCha20Poly1305Key"

    .line 36
    invoke-static {v5, v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v1, "TINK_AEAD"

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcj;->zzgpv:Lcom/google/android/gms/internal/ads/zzdho;

    .line 40
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdcj;->zzany()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzany()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddo;->zzany()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdci;-><init>()V

    const-string v1, "TinkAead"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbk;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcj;->zzgpv:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Lcom/google/android/gms/internal/ads/zzdho;)V

    return-void
.end method
