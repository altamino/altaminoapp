.class final synthetic Lcom/google/android/gms/internal/ads/zzcux;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgig:Lcom/google/android/gms/internal/ads/zzcuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgig:Lcom/google/android/gms/internal/ads/zzcuw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgig:Lcom/google/android/gms/internal/ads/zzcuw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuw;->zzaly()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    return-object v0
.end method
