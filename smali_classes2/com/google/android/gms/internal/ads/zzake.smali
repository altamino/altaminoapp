.class final Lcom/google/android/gms/internal/ads/zzake;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

.field private final synthetic zzdby:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdby:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajy;->zza(Lcom/google/android/gms/internal/ads/zzajy;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzake;->zzdby:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
