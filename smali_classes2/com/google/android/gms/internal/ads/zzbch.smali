.class final Lcom/google/android/gms/internal/ads/zzbch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

.field private final synthetic zzebn:Ljava/lang/String;

.field private final synthetic zzebo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzebo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcn;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
