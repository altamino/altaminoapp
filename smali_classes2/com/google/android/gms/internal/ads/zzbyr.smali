.class final synthetic Lcom/google/android/gms/internal/ads/zzbyr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzecm:Z

.field private final zzfny:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyn;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyr;->zzfny:Lcom/google/android/gms/internal/ads/zzbyn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbyr;->zzecm:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyr;->zzfny:Lcom/google/android/gms/internal/ads/zzbyn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyr;->zzecm:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzay(Z)V

    return-void
.end method
