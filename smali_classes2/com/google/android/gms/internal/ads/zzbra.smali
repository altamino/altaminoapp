.class public final Lcom/google/android/gms/internal/ads/zzbra;
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


# instance fields
.field private final zzfjw:Lcom/google/android/gms/internal/ads/zzbqy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfjw:Lcom/google/android/gms/internal/ads/zzbqy;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzbra;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbra;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbra;-><init>(Lcom/google/android/gms/internal/ads/zzbqy;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfjw:Lcom/google/android/gms/internal/ads/zzbqy;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
