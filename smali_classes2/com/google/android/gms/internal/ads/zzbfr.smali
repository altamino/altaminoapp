.class final Lcom/google/android/gms/internal/ads/zzbfr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzehr:Lcom/google/android/gms/internal/ads/zzbfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzehr:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzmc()Lcom/google/android/gms/internal/ads/zzbfs;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzehr:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfs;->zzb(Lcom/google/android/gms/internal/ads/zzbfq;)V

    return-void
.end method
