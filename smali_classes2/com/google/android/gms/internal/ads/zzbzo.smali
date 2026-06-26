.class final Lcom/google/android/gms/internal/ads/zzbzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# instance fields
.field private final synthetic zzfpw:Lcom/google/android/gms/internal/ads/zzcab;

.field private final synthetic zzfpx:Landroid/view/ViewGroup;

.field private final synthetic zzfpy:Lcom/google/android/gms/internal/ads/zzbzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzcab;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpy:Lcom/google/android/gms/internal/ads/zzbzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpw:Lcom/google/android/gms/internal/ads/zzcab;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpx:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpw:Lcom/google/android/gms/internal/ads/zzcab;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzrg()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpy:Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpw:Lcom/google/android/gms/internal/ads/zzcab;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzj;->zzfpm:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzcab;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpw:Lcom/google/android/gms/internal/ads/zzcab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzfpx:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
