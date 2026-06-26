.class public final Lcom/google/android/gms/internal/ads/zzddo;
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
    .locals 6

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v1, "TINK_MAC_1_0_0"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    const-string v1, "TinkMac"

    const-string v2, "Mac"

    const-string v3, "HmacKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddo;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddo;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    const-string v1, "TINK_MAC_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddo;->zzgpu:Lcom/google/android/gms/internal/ads/zzdho;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdho;->zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddo;->zzgpt:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zza(Lcom/google/android/gms/internal/ads/zzdob;)Lcom/google/android/gms/internal/ads/zzdob$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    const-string v1, "TINK_MAC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdho$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdho$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddo;->zzgpv:Lcom/google/android/gms/internal/ads/zzdho;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddo;->zzany()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddn;-><init>()V

    const-string v1, "TinkMac"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbk;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzddo;->zzgpv:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbl;->zza(Lcom/google/android/gms/internal/ads/zzdho;)V

    return-void
.end method
