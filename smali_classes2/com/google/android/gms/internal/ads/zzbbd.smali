.class final synthetic Lcom/google/android/gms/internal/ads/zzbbd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdzp:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzdzw:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzdzw:Lcom/google/android/gms/internal/ads/zzbbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzdzp:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzdzw:Lcom/google/android/gms/internal/ads/zzbbc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzdzp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbc;->zza(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method
