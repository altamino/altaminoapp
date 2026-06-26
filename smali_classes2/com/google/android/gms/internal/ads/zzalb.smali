.class final Lcom/google/android/gms/internal/ads/zzalb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbbv<",
        "Lcom/google/android/gms/internal/ads/zzajw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdcy:Lcom/google/android/gms/internal/ads/zzakw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzakw;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzdcy:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzajw;

    const-string v0, "Getting a new session for JS Engine."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzdcy:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzru()Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzo(Ljava/lang/Object;)V

    return-void
.end method
