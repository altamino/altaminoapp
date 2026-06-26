.class final Lcom/google/android/gms/internal/ads/zzcot;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field private final synthetic zzgbx:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final synthetic zzgby:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final synthetic zzgcx:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final synthetic zzgcy:Lcom/google/android/gms/internal/ads/zzcoz;

.field private final synthetic zzgcz:Lcom/google/android/gms/internal/ads/zzcor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcoz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcz:Lcom/google/android/gms/internal/ads/zzcor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcx:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgbx:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgby:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcy:Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Landroid/view/View;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcx:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcz:Lcom/google/android/gms/internal/ads/zzcor;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcor;->zza(Lcom/google/android/gms/internal/ads/zzcor;)Lcom/google/android/gms/internal/ads/zzcou;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgbx:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgby:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcot;->zzgcy:Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcoz;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzky()V
    .locals 0

    return-void
.end method

.method public final zzkz()V
    .locals 0

    return-void
.end method
