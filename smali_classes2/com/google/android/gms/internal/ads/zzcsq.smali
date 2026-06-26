.class final synthetic Lcom/google/android/gms/internal/ads/zzcsq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzghb:Lcom/google/android/gms/internal/ads/zzcsp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzghb:Lcom/google/android/gms/internal/ads/zzcsp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzghb:Lcom/google/android/gms/internal/ads/zzcsp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsp;->zzalq()Lcom/google/android/gms/internal/ads/zzcss;

    move-result-object v0

    return-object v0
.end method
