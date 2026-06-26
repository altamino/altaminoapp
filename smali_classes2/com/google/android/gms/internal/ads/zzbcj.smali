.class final Lcom/google/android/gms/internal/ads/zzbcj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

.field private final synthetic zzebp:I

.field private final synthetic zzebq:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcd;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebp:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzebq:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcn;->zzk(II)V

    :cond_0
    return-void
.end method
