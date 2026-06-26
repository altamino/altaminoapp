.class public final Lcom/google/android/gms/internal/ads/zzbqa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbuz<",
        "Lcom/google/android/gms/internal/ads/zzbrw;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfji:Lcom/google/android/gms/internal/ads/zzbpx;

.field private final zzfjj:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbqe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpx;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpx;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbqe;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzfji:Lcom/google/android/gms/internal/ads/zzbpx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzfjj:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbpx;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzbqa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpx;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzbqe;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbqa;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbqa;-><init>(Lcom/google/android/gms/internal/ads/zzbpx;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzfjj:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqe;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuz;

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 12
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbuz;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbuz;

    return-object v0
.end method
