.class final synthetic Lcom/google/android/gms/internal/ads/zzckg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzfzq:Lcom/google/android/gms/internal/ads/zzckb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckb;Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzfzq:Lcom/google/android/gms/internal/ads/zzckb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzfzq:Lcom/google/android/gms/internal/ads/zzckb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzfrw:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckb;->zzm(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-void
.end method
