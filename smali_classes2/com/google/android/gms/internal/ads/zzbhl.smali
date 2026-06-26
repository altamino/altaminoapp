.class final Lcom/google/android/gms/internal/ads/zzbhl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzekm:Lcom/google/android/gms/internal/ads/zzbhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzekm:Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhl;->zzekm:Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhk;->zza(Lcom/google/android/gms/internal/ads/zzbhk;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->destroy()V

    return-void
.end method
