.class final Lcom/google/android/gms/internal/ads/zzazu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzed(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzazv;-><init>(Lcom/google/android/gms/internal/ads/zzazu;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
