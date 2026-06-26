.class final synthetic Lcom/google/android/gms/internal/ads/zzakb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbik;


# instance fields
.field private final zzdbv:Lcom/google/android/gms/internal/ads/zzajx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzdbv:Lcom/google/android/gms/internal/ads/zzajx;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzbik;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(Lcom/google/android/gms/internal/ads/zzajx;)V

    return-object v0
.end method


# virtual methods
.method public final zzrw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzdbv:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajx;->zzrv()V

    return-void
.end method
