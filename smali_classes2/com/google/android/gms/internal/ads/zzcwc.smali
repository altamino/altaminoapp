.class public final Lcom/google/android/gms/internal/ads/zzcwc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "Lcom/google/android/gms/internal/ads/zzcwb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

.field zzgjb:Lcom/google/android/gms/internal/ads/zzvx;

.field zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzbbl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzgjb:Lcom/google/android/gms/internal/ads/zzvx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzlj:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzalm()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcwb;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwc;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwd;-><init>(Lcom/google/android/gms/internal/ads/zzcwc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method
