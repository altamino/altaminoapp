.class final Lcom/google/android/gms/internal/ads/zzara;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdlh:Lcom/google/android/gms/internal/ads/zzbah;

.field private final synthetic zzdli:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Lcom/google/android/gms/internal/ads/zzbah;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdlh:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdli:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdlh:Lcom/google/android/gms/internal/ads/zzbah;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzara;->zzdli:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbah;->zzed(Ljava/lang/String;)V

    return-void
.end method
