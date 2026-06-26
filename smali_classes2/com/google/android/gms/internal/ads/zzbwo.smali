.class public final Lcom/google/android/gms/internal/ads/zzbwo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbgz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzflo:Lcom/google/android/gms/internal/ads/zzbvz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbvz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzflo:Lcom/google/android/gms/internal/ads/zzbvz;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbvz;)Lcom/google/android/gms/internal/ads/zzbwo;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwo;-><init>(Lcom/google/android/gms/internal/ads/zzbvz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwo;->zzflo:Lcom/google/android/gms/internal/ads/zzbvz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvz;->zzafn()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    return-object v0
.end method
