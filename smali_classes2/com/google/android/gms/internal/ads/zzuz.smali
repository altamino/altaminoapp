.class public final Lcom/google/android/gms/internal/ads/zzuz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F

.field private final zzbvu:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuz;->left:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuz;->top:F

    add-float/2addr p1, p3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuz;->right:F

    add-float/2addr p2, p4

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuz;->bottom:F

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzbvu:I

    return-void
.end method


# virtual methods
.method final zzna()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->left:F

    return v0
.end method

.method final zznb()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->top:F

    return v0
.end method

.method final zznc()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->right:F

    return v0
.end method

.method final zznd()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->bottom:F

    return v0
.end method

.method final zzne()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzbvu:I

    return v0
.end method
