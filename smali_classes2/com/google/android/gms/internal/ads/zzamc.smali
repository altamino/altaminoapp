.class final synthetic Lcom/google/android/gms/internal/ads/zzamc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbam;


# instance fields
.field private final zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

.field private final zzddy:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzddy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzddy:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamc;->zzdbq:Lcom/google/android/gms/internal/ads/zzaho;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalf;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalf;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-object p1
.end method
