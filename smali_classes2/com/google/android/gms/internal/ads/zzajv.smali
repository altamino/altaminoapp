.class final synthetic Lcom/google/android/gms/internal/ads/zzajv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdbp:Lcom/google/android/gms/internal/ads/zzaju;

.field private final zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

.field private final zzdbr:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzaho;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbp:Lcom/google/android/gms/internal/ads/zzaju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbr:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbp:Lcom/google/android/gms/internal/ads/zzaju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajv;->zzdbr:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Lcom/google/android/gms/internal/ads/zzaho;Ljava/util/Map;)V

    return-void
.end method
