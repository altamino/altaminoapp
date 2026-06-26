.class public final Lcom/google/android/gms/internal/ads/zzbvh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvg;


# instance fields
.field private final zzdnl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzffb:Lcom/google/android/gms/internal/ads/zzdae;

.field private zzflf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzdae;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnl:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzdnl:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzffb:Lcom/google/android/gms/internal/ads/zzdae;

    return-void
.end method


# virtual methods
.method public final zzagx()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzflf:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzffb:Lcom/google/android/gms/internal/ads/zzdae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzdnl:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdae;->zzh(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzflf:Z

    :cond_0
    return-void
.end method
