.class final synthetic Lcom/google/android/gms/internal/ads/zzcuf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzghp:Lcom/google/android/gms/internal/ads/zzcue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzghp:Lcom/google/android/gms/internal/ads/zzcue;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzghp:Lcom/google/android/gms/internal/ads/zzcue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcue;->zzalv()Lcom/google/android/gms/internal/ads/zzcud;

    move-result-object v0

    return-object v0
.end method
