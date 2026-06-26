.class final synthetic Lcom/google/android/gms/internal/ads/zzcgc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

.field private final zzfvg:Lcom/google/android/gms/internal/ads/zzait;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgb;Lcom/google/android/gms/internal/ads/zzait;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfvg:Lcom/google/android/gms/internal/ads/zzait;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzfvg:Lcom/google/android/gms/internal/ads/zzait;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzc(Lcom/google/android/gms/internal/ads/zzait;)V

    return-void
.end method
