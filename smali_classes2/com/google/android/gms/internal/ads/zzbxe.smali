.class public final Lcom/google/android/gms/internal/ads/zzbxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuu;


# instance fields
.field private final zzflw:Lcom/google/android/gms/internal/ads/zzbry;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxe;->zzflw:Lcom/google/android/gms/internal/ads/zzbry;

    return-void
.end method


# virtual methods
.method public final onHide()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxe;->zzflw:Lcom/google/android/gms/internal/ads/zzbry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbry;->zzbr(Landroid/content/Context;)V

    return-void
.end method

.method public final zzagw()V
    .locals 0

    return-void
.end method
