.class public final Lcom/google/android/gms/internal/ads/zzcyq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcym;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgf:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcyk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzglu:Lcom/google/android/gms/internal/ads/zzcyo;

.field private final zzglw:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcyo;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcyk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzglu:Lcom/google/android/gms/internal/ads/zzcyo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzfgf:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzglw:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzcyq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcyo;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcyk;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcyq;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcyq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcyq;-><init>(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzfgf:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzglw:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyk;->zzfw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcym;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcym;

    return-object v0
.end method
