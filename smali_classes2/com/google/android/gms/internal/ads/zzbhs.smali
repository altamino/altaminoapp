.class final synthetic Lcom/google/android/gms/internal/ads/zzbhs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwj:I

.field private final zzdwk:I

.field private final zzeka:Z

.field private final zzekb:Z

.field private final zzemc:Lcom/google/android/gms/internal/ads/zzbhq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhq;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzemc:Lcom/google/android/gms/internal/ads/zzbhq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzdwj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzdwk:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzeka:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzekb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzemc:Lcom/google/android/gms/internal/ads/zzbhq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzdwj:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzdwk:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzeka:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbhs;->zzekb:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhq;->zzb(IIZZ)V

    return-void
.end method
