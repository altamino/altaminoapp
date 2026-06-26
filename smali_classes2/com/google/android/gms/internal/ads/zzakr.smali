.class final synthetic Lcom/google/android/gms/internal/ads/zzakr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdck:Lcom/google/android/gms/internal/ads/zzajw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakr;->zzdck:Lcom/google/android/gms/internal/ads/zzajw;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzajw;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakr;-><init>(Lcom/google/android/gms/internal/ads/zzajw;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->zzdck:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajw;->destroy()V

    return-void
.end method
