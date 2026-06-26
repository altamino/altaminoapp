.class final synthetic Lcom/google/android/gms/internal/ads/zzbdy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdsr:Ljava/lang/String;

.field private final zzefz:Lcom/google/android/gms/internal/ads/zzbdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzdbk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzdsr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzdbk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdy;->zzdsr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdq;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
