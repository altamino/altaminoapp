.class final synthetic Lcom/google/android/gms/internal/ads/zzbcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzecl:Lcom/google/android/gms/internal/ads/zzbcq;

.field private final zzecm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcq;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzecl:Lcom/google/android/gms/internal/ads/zzbcq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzecm:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzecl:Lcom/google/android/gms/internal/ads/zzbcq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcs;->zzecm:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcq;->zzan(Z)V

    return-void
.end method
