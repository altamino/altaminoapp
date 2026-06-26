.class public abstract Lcom/google/android/gms/internal/ads/zzchj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbal<",
        "Lcom/google/android/gms/internal/ads/zzarx;",
        "Lcom/google/android/gms/internal/ads/zzcxu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwt:Lcom/google/android/gms/internal/ads/zzbtg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfwt:Lcom/google/android/gms/internal/ads/zzbtg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzchj;)Lcom/google/android/gms/internal/ads/zzbtg;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfwt:Lcom/google/android/gms/internal/ads/zzbtg;

    return-object p0
.end method


# virtual methods
.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzarx;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcgm;
        }
    .end annotation
.end method

.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzarx;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchj;->zzfwt:Lcom/google/android/gms/internal/ads/zzbtg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtg;->zzb(Lcom/google/android/gms/internal/ads/zzarx;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zze(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchk;-><init>(Lcom/google/android/gms/internal/ads/zzchj;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
