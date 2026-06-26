.class public final Lcom/google/android/gms/internal/ads/zzbky;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzavd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfed:Lcom/google/android/gms/internal/ads/zzbkw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbky;->zzfed:Lcom/google/android/gms/internal/ads/zzbkw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbky;->zzfed:Lcom/google/android/gms/internal/ads/zzbkw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkw;->zzacx()Lcom/google/android/gms/internal/ads/zzavd;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavd;

    return-object v0
.end method
