.class final synthetic Lcom/google/android/gms/internal/ads/zzbau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzl:Lcom/google/android/gms/internal/ads/zzbal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbal;Lcom/google/android/gms/internal/ads/zzbbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzdzl:Lcom/google/android/gms/internal/ads/zzbal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzdzl:Lcom/google/android/gms/internal/ads/zzbal;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbal;Lcom/google/android/gms/internal/ads/zzbbh;)V

    return-void
.end method
