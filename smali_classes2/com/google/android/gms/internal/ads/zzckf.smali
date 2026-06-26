.class final synthetic Lcom/google/android/gms/internal/ads/zzckf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzemf:Lcom/google/android/gms/internal/ads/zzbgz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckf;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method

.method static zzo(Lcom/google/android/gms/internal/ads/zzbgz;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckf;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckf;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaav()V

    return-void
.end method
