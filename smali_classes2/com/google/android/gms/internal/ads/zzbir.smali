.class final Lcom/google/android/gms/internal/ads/zzbir;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzejs:Lcom/google/android/gms/internal/ads/zzavb;

.field private final synthetic zzemm:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbio;Lcom/google/android/gms/internal/ads/zzavb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzemm:Lcom/google/android/gms/internal/ads/zzbio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzejs:Lcom/google/android/gms/internal/ads/zzavb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzemm:Lcom/google/android/gms/internal/ads/zzbio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbir;->zzejs:Lcom/google/android/gms/internal/ads/zzavb;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/internal/ads/zzbio;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
