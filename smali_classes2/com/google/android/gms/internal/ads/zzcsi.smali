.class final synthetic Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzggu:Lcom/google/android/gms/internal/ads/zzcsh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzggu:Lcom/google/android/gms/internal/ads/zzcsh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzggu:Lcom/google/android/gms/internal/ads/zzcsh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzalp()Lcom/google/android/gms/internal/ads/zzcsg;

    move-result-object v0

    return-object v0
.end method
