.class final Lcom/google/android/gms/internal/ads/zzcqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzcrc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgfr:Lcom/google/android/gms/internal/ads/zzavy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqq;Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzgfr:Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzgfr:Lcom/google/android/gms/internal/ads/zzavy;

    const-string v0, "Internal error."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavy;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 2

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrc;

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqr;->zzgfr:Lcom/google/android/gms/internal/ads/zzavy;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcrc;->zzgfw:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcrc;->zzgfx:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzavy;->zzk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
