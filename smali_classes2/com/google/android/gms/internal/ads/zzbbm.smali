.class public final Lcom/google/android/gms/internal/ads/zzbbm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field public static final zzeae:Ljava/util/concurrent/Executor;

.field public static final zzeaf:Ljava/util/concurrent/Executor;

.field public static final zzeag:Lcom/google/android/gms/internal/ads/zzbbl;

.field private static final zzeah:Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeag:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeah:Lcom/google/android/gms/internal/ads/zzbbl;

    return-void
.end method

.method public static zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbl;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbbp;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbbn;)V

    return-object v0
.end method
