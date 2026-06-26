.class public final Lcom/google/android/gms/internal/ads/zzbll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzamh;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfer:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbll;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbll;->zzfer:Lcom/google/android/gms/internal/ads/zzbll;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaew()Lcom/google/android/gms/internal/ads/zzbll;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbll;->zzfer:Lcom/google/android/gms/internal/ads/zzbll;

    return-object v0
.end method

.method public static zzaex()Lcom/google/android/gms/internal/ads/zzamh;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamh;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbll;->zzaex()Lcom/google/android/gms/internal/ads/zzamh;

    move-result-object v0

    return-object v0
.end method
