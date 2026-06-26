.class public final Lcom/google/android/gms/internal/ads/zzbxu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfmi:Lcom/google/android/gms/internal/ads/zzbxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbxu;->zzfmi:Lcom/google/android/gms/internal/ads/zzbxu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzahi()Lcom/google/android/gms/internal/ads/zzbxu;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbxu;->zzfmi:Lcom/google/android/gms/internal/ads/zzbxu;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    const-string v0, "native"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
