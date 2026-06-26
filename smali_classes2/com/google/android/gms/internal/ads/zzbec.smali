.class final synthetic Lcom/google/android/gms/internal/ads/zzbec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwj:I

.field private final zzdwk:I

.field private final zzefz:Lcom/google/android/gms/internal/ads/zzbdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdwj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdwk:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdwj:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzdwk:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdq;->zzn(II)V

    return-void
.end method
