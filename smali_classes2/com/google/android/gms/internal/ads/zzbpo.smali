.class final Lcom/google/android/gms/internal/ads/zzbpo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzbph;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfja:Lcom/google/android/gms/internal/ads/zzban;

.field private final synthetic zzfjb:Lcom/google/android/gms/internal/ads/zzbpk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzban;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfjb:Lcom/google/android/gms/internal/ads/zzbpk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfja:Lcom/google/android/gms/internal/ads/zzban;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfja:Lcom/google/android/gms/internal/ads/zzban;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfjb:Lcom/google/android/gms/internal/ads/zzbpk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbpk;->zza(Lcom/google/android/gms/internal/ads/zzbpk;)V

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbph;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfjb:Lcom/google/android/gms/internal/ads/zzbpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbph;->zzfiv:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpo;->zzfja:Lcom/google/android/gms/internal/ads/zzban;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbpk;->zza(Lcom/google/android/gms/internal/ads/zzbpk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzban;)V

    return-void
.end method
