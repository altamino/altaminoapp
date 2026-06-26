.class final synthetic Lcom/google/android/gms/internal/ads/zzcrf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzggb:Lcom/google/android/gms/internal/ads/zzcre;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrf;->zzggb:Lcom/google/android/gms/internal/ads/zzcre;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrf;->zzggb:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcre;->zzaln()Lcom/google/android/gms/internal/ads/zzcrd;

    move-result-object v0

    return-object v0
.end method
