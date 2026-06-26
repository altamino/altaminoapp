.class public final Lcom/google/android/gms/internal/ads/zzbnd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgv:Lcom/google/android/gms/internal/ads/zzbnc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzfgv:Lcom/google/android/gms/internal/ads/zzbnc;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzfgv:Lcom/google/android/gms/internal/ads/zzbnc;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnc;->zzafh()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
