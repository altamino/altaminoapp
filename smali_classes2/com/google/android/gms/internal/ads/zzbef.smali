.class final Lcom/google/android/gms/internal/ads/zzbef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhh;


# instance fields
.field private final synthetic zzegb:Lcom/google/android/gms/internal/ads/zzbdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IIF)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzb(Lcom/google/android/gms/internal/ads/zzbdq;I)I

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdq;->zzc(Lcom/google/android/gms/internal/ads/zzbdq;I)I

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;F)F

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzd(Lcom/google/android/gms/internal/ads/zzbdq;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbdq;->zze(Lcom/google/android/gms/internal/ads/zzbdq;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzf(Lcom/google/android/gms/internal/ads/zzbdq;)F

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;IIF)V

    return-void
.end method

.method public final zza(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public final zza(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public final zzb(IJ)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Dropped frames. Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Elapsed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CryptoError"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbef;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DecoderInitializationError"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
