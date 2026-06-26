.class final synthetic Lcom/google/android/gms/internal/ads/zzcos;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczd;


# instance fields
.field private final zzgcr:Lcom/google/android/gms/internal/ads/zzadj;

.field private final zzgcw:Lcom/google/android/gms/internal/ads/zzcor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzadj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzgcw:Lcom/google/android/gms/internal/ads/zzcor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzgcr:Lcom/google/android/gms/internal/ads/zzadj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzgcw:Lcom/google/android/gms/internal/ads/zzcor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzgcr:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcor;->zzb(Lcom/google/android/gms/internal/ads/zzadj;)V

    return-void
.end method
