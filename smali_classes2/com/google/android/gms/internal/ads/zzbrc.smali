.class public final Lcom/google/android/gms/internal/ads/zzbrc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Landroid/os/Bundle;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfjw:Lcom/google/android/gms/internal/ads/zzbqy;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzbrc;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrc;-><init>(Lcom/google/android/gms/internal/ads/zzbqy;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrc;->zzfjw:Lcom/google/android/gms/internal/ads/zzbqy;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagf()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
