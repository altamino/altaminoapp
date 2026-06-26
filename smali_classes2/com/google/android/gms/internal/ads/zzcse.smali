.class final synthetic Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzggt:Lcom/google/android/gms/internal/ads/zzcsd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzggt:Lcom/google/android/gms/internal/ads/zzcsd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zzggt:Lcom/google/android/gms/internal/ads/zzcsd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsd;->zzalo()Lcom/google/android/gms/internal/ads/zzcsc;

    move-result-object v0

    return-object v0
.end method
