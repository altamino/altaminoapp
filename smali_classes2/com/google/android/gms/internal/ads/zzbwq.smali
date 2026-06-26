.class public final Lcom/google/android/gms/internal/ads/zzbwq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final zzflq:Lcom/google/android/gms/internal/ads/zzbuv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbuv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflq:Lcom/google/android/gms/internal/ads/zzbuv;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->onResume()V

    return-void
.end method

.method public final zzsz()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->zzsz()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflq:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuv;->onHide()V

    return-void
.end method

.method public final zzta()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->zzta()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzflq:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuv;->zzagw()V

    return-void
.end method
