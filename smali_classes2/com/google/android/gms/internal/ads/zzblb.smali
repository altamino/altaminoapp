.class final synthetic Lcom/google/android/gms/internal/ads/zzblb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzead:Ljava/lang/Runnable;

.field private final zzfei:Lcom/google/android/gms/internal/ads/zzbkz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbkz;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzfei:Lcom/google/android/gms/internal/ads/zzbkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzead:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzfei:Lcom/google/android/gms/internal/ads/zzbkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblb;->zzead:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkz;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method
