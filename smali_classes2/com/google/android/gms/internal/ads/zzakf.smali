.class final Lcom/google/android/gms/internal/ads/zzakf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaho<",
        "Lcom/google/android/gms/internal/ads/zzbgz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

.field private final zzdbz:Lcom/google/android/gms/internal/ads/zzaho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalf;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzdbz:Lcom/google/android/gms/internal/ads/zzaho;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakf;)Lcom/google/android/gms/internal/ads/zzaho;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzdbz:Lcom/google/android/gms/internal/ads/zzaho;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzdbz:Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzdbx:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaho;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
