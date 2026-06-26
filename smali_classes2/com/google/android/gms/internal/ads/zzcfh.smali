.class public final Lcom/google/android/gms/internal/ads/zzcfh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcfl;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfup:Lcom/google/android/gms/internal/ads/zzcfh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfh;->zzfup:Lcom/google/android/gms/internal/ads/zzcfh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzajw()Lcom/google/android/gms/internal/ads/zzcfh;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfh;->zzfup:Lcom/google/android/gms/internal/ads/zzcfh;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczs;->zzgmt:Lcom/google/android/gms/internal/ads/zzczs;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzczs;->zzgmw:Lcom/google/android/gms/internal/ads/zzczs;

    const-string/jumbo v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczs;Lcom/google/android/gms/internal/ads/zzczs;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfl;

    return-object v0
.end method
