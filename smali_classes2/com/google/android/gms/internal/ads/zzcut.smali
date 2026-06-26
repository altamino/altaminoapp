.class final synthetic Lcom/google/android/gms/internal/ads/zzcut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgid:Lcom/google/android/gms/internal/ads/zzcus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcut;->zzgid:Lcom/google/android/gms/internal/ads/zzcus;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcut;->zzgid:Lcom/google/android/gms/internal/ads/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcus;->zzalx()Lcom/google/android/gms/internal/ads/zzcur;

    move-result-object v0

    return-object v0
.end method
