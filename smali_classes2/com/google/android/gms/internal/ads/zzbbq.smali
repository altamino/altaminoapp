.class public final Lcom/google/android/gms/internal/ads/zzbbq;
.super Lcom/google/android/gms/internal/ads/zzbbr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzbbr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzeak:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzeak:Ljava/lang/Object;

    return-void
.end method

.method public static zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzbbq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzxe()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzeak:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V

    return-void
.end method
