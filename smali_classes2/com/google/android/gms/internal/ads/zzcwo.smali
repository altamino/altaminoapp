.class final synthetic Lcom/google/android/gms/internal/ads/zzcwo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgjj:Lcom/google/android/gms/internal/ads/zzcwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzgjj:Lcom/google/android/gms/internal/ads/zzcwn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzgjj:Lcom/google/android/gms/internal/ads/zzcwn;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgji:Lcom/google/android/gms/internal/ads/zzaci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwn;->zzdly:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcwm;-><init>(Ljava/util/List;)V

    return-object v1
.end method
