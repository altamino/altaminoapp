.class public final Lcom/google/android/gms/internal/ads/zzxs;
.super Lcom/google/android/gms/internal/ads/zzyx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final zzcgi:Lcom/google/android/gms/internal/ads/zzxr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxr;->onAdClicked()V

    return-void
.end method
