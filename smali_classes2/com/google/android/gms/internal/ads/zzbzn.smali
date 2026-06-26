.class final synthetic Lcom/google/android/gms/internal/ads/zzbzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfpt:Lcom/google/android/gms/internal/ads/zzbzl;

.field private final zzfpv:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzl;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzn;->zzfpt:Lcom/google/android/gms/internal/ads/zzbzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzn;->zzfpv:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzn;->zzfpt:Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzn;->zzfpv:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzb(Landroid/view/ViewGroup;)V

    return-void
.end method
