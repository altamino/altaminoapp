.class final Lcom/google/android/gms/internal/ads/zzcco;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzbgz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfsm:Ljava/lang/String;

.field private final synthetic zzfsn:Lcom/google/android/gms/internal/ads/zzaho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfsm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfsn:Lcom/google/android/gms/internal/ads/zzaho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgz;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfsm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->zzfsn:Lcom/google/android/gms/internal/ads/zzaho;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-void
.end method
