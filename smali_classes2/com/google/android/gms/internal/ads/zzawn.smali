.class final synthetic Lcom/google/android/gms/internal/ads/zzawn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdtw:Lcom/google/android/gms/internal/ads/zzawm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzdtw:Lcom/google/android/gms/internal/ads/zzawm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzdtw:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvf()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
