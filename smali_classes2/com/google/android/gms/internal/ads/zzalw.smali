.class final Lcom/google/android/gms/internal/ads/zzalw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbt;


# instance fields
.field private final synthetic zzdar:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final synthetic zzddr:Lcom/google/android/gms/internal/ads/zzakw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalu;Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzakw;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdar:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzddr:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdar:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzali;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzddr:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->release()V

    return-void
.end method
