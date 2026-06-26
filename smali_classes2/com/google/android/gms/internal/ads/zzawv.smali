.class public abstract Lcom/google/android/gms/internal/ads/zzawv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzdus:Ljava/lang/Runnable;

.field private volatile zzdut:Ljava/lang/Thread;

.field private zzduu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Lcom/google/android/gms/internal/ads/zzawv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdus:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzduu:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdut:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract zzto()V
.end method

.method public final zzvi()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawv;->zzdus:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzc(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method
