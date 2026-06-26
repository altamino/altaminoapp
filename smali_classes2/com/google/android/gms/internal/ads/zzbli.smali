.class public final Lcom/google/android/gms/internal/ads/zzbli;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzach;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfeo:Lcom/google/android/gms/internal/ads/zzbli;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbli;->zzfeo:Lcom/google/android/gms/internal/ads/zzbli;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaer()Lcom/google/android/gms/internal/ads/zzach;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzach;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzach;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzach;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbli;->zzaer()Lcom/google/android/gms/internal/ads/zzach;

    move-result-object v0

    return-object v0
.end method
