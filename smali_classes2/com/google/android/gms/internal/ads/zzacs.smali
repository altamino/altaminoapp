.class final synthetic Lcom/google/android/gms/internal/ads/zzacs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzckq:Lcom/google/android/gms/internal/ads/zzacr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzckq:Lcom/google/android/gms/internal/ads/zzacr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzckq:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzqq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
