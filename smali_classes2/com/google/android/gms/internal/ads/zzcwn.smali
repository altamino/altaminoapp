.class public final Lcom/google/android/gms/internal/ads/zzcwn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "Lcom/google/android/gms/internal/ads/zzcwm;",
        ">;"
    }
.end annotation


# instance fields
.field zzdly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

.field zzgji:Lcom/google/android/gms/internal/ads/zzaci;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzbbl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaci;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzgji:Lcom/google/android/gms/internal/ads/zzaci;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzdly:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzalm()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwn;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Lcom/google/android/gms/internal/ads/zzcwn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method
