.class final Lcom/google/android/gms/internal/ads/zzchk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzcxu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwu:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzfwu:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxu;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzfwu:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchj;->zza(Lcom/google/android/gms/internal/ads/zzchj;)Lcom/google/android/gms/internal/ads/zzbtg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtg;->zza(Lcom/google/android/gms/internal/ads/zzcxu;)V

    return-void
.end method
