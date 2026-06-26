.class final synthetic Lcom/google/android/gms/internal/ads/zzbcr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeck:Lcom/google/android/gms/internal/ads/zzbco;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzeck:Lcom/google/android/gms/internal/ads/zzbco;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbco;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbcr;-><init>(Lcom/google/android/gms/internal/ads/zzbco;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcr;->zzeck:Lcom/google/android/gms/internal/ads/zzbco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbco;->stop()V

    return-void
.end method
