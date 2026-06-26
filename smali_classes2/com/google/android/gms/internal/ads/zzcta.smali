.class final synthetic Lcom/google/android/gms/internal/ads/zzcta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzghh:Lcom/google/android/gms/internal/ads/zzcsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzghh:Lcom/google/android/gms/internal/ads/zzcsz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcta;->zzghh:Lcom/google/android/gms/internal/ads/zzcsz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsz;->zzalr()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v0

    return-object v0
.end method
