.class public final Lcom/google/android/gms/internal/ads/zzcys;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzdh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzglu:Lcom/google/android/gms/internal/ads/zzcyo;

.field private final zzglv:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcym;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcyo;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcym;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzglu:Lcom/google/android/gms/internal/ads/zzcyo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzglv:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzcys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcyo;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcym;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcys;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcys;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcys;-><init>(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcys;->zzglv:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcym;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcym;->zzglt:Lcom/google/android/gms/internal/ads/zzdh;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdh;

    return-object v0
.end method
