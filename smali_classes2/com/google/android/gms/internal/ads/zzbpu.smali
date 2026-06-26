.class public final Lcom/google/android/gms/internal/ads/zzbpu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcxu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfjf:Lcom/google/android/gms/internal/ads/zzbpr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpu;->zzfjf:Lcom/google/android/gms/internal/ads/zzbpr;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzbpr;)Lcom/google/android/gms/internal/ads/zzbpu;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbpu;-><init>(Lcom/google/android/gms/internal/ads/zzbpr;)V

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbpr;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbpr;->zzaga()Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcxu;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpu;->zzfjf:Lcom/google/android/gms/internal/ads/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpu;->zzf(Lcom/google/android/gms/internal/ads/zzbpr;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object v0

    return-object v0
.end method
