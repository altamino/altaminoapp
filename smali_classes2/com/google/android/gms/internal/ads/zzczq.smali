.class final Lcom/google/android/gms/internal/ads/zzczq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgmr:Lcom/google/android/gms/internal/ads/zzcze;

.field private final synthetic zzgms:Lcom/google/android/gms/internal/ads/zzczl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczl;Lcom/google/android/gms/internal/ads/zzcze;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgms:Lcom/google/android/gms/internal/ads/zzczl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgmr:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgms:Lcom/google/android/gms/internal/ads/zzczl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczl;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczf;->zzc(Lcom/google/android/gms/internal/ads/zzczf;)Lcom/google/android/gms/internal/ads/zzczr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgmr:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzczr;->zza(Lcom/google/android/gms/internal/ads/zzcze;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgms:Lcom/google/android/gms/internal/ads/zzczl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzczl;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzczf;->zzc(Lcom/google/android/gms/internal/ads/zzczf;)Lcom/google/android/gms/internal/ads/zzczr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgmr:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzczr;->zzc(Lcom/google/android/gms/internal/ads/zzcze;)V

    return-void
.end method
