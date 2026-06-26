.class final synthetic Lcom/google/android/gms/internal/ads/zzczp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzczl;

.field private final zzgmq:Lcom/google/android/gms/internal/ads/zzcze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczl;Lcom/google/android/gms/internal/ads/zzcze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgmp:Lcom/google/android/gms/internal/ads/zzczl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgmq:Lcom/google/android/gms/internal/ads/zzcze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgmp:Lcom/google/android/gms/internal/ads/zzczl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgmq:Lcom/google/android/gms/internal/ads/zzcze;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczl;->zzgmk:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczf;->zzc(Lcom/google/android/gms/internal/ads/zzczf;)Lcom/google/android/gms/internal/ads/zzczr;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczr;->zzb(Lcom/google/android/gms/internal/ads/zzcze;)V

    return-void
.end method
