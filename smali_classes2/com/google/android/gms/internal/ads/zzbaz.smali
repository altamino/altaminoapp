.class final synthetic Lcom/google/android/gms/internal/ads/zzbaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzdzs:Ljava/lang/Class;

.field private final zzdzt:Lcom/google/android/gms/internal/ads/zzbal;

.field private final zzdzu:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzs:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzt:Lcom/google/android/gms/internal/ads/zzbal;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzu:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzbxh:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzi:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzs:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzt:Lcom/google/android/gms/internal/ads/zzbal;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbaz;->zzdzu:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)V

    return-void
.end method
