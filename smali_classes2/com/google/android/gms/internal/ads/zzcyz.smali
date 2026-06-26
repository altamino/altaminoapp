.class public final Lcom/google/android/gms/internal/ads/zzcyz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbbl;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzgmb:Lcom/google/android/gms/internal/ads/zzcyz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcyz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcyz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgmb:Lcom/google/android/gms/internal/ads/zzcyz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzamz()Lcom/google/android/gms/internal/ads/zzcyz;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgmb:Lcom/google/android/gms/internal/ads/zzcyz;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdvq:Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbl;

    return-object v0
.end method
