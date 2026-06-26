.class final synthetic Lcom/google/android/gms/internal/ads/zzcnn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgar:Lcom/google/android/gms/internal/ads/zzced;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzced;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgar:Lcom/google/android/gms/internal/ads/zzced;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzced;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnn;-><init>(Lcom/google/android/gms/internal/ads/zzced;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnn;->zzgar:Lcom/google/android/gms/internal/ads/zzced;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzced;->zzajo()V

    return-void
.end method
