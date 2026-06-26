.class public final Lcom/google/android/gms/internal/ads/zzcxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzcuz<",
        "Lorg/json/JSONObject;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final zzgjr:Lcom/google/android/gms/internal/ads/zzcxe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxe;->zzgjr:Lcom/google/android/gms/internal/ads/zzcxe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzamj()Lcom/google/android/gms/internal/ads/zzcva;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzcva<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcuz<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcxc;->zzgjp:Lcom/google/android/gms/internal/ads/zzcva;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcva;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcxe;->zzamj()Lcom/google/android/gms/internal/ads/zzcva;

    move-result-object v0

    return-object v0
.end method
