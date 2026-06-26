.class final synthetic Lcom/google/android/gms/internal/ads/zzbdt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwj:I

.field private final zzefz:Lcom/google/android/gms/internal/ads/zzbdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzdwj:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzdwj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzdd(I)V

    return-void
.end method
