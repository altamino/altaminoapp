.class final Lcom/google/android/gms/internal/ads/zzbiq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic zzejs:Lcom/google/android/gms/internal/ads/zzavb;

.field private final synthetic zzejt:I

.field private final synthetic zzemm:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbio;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzemm:Lcom/google/android/gms/internal/ads/zzbio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiq;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzejs:Lcom/google/android/gms/internal/ads/zzavb;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzejt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzemm:Lcom/google/android/gms/internal/ads/zzbio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiq;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzejs:Lcom/google/android/gms/internal/ads/zzavb;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzejt:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/internal/ads/zzbio;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void
.end method
