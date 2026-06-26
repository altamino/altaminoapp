.class public final Lcom/google/android/gms/internal/ads/zzbwn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbuz<",
        "Lcom/google/android/gms/internal/ads/zzbto;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfgh:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzflo:Lcom/google/android/gms/internal/ads/zzbvz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbvz;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbvz;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->zzflo:Lcom/google/android/gms/internal/ads/zzbvz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwn;->zzfgh:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbvz;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzbwn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbvz;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbwn;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbwn;-><init>(Lcom/google/android/gms/internal/ads/zzbvz;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwn;->zzflo:Lcom/google/android/gms/internal/ads/zzbvz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwn;->zzfgh:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbuz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbwb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbwb;-><init>(Lcom/google/android/gms/internal/ads/zzbvz;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbuz;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbuz;

    return-object v0
.end method
