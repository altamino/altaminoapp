.class final synthetic Lcom/google/android/gms/internal/ads/zzakm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdce:Lcom/google/android/gms/internal/ads/zzakh;

.field private final zzdci:Lcom/google/android/gms/internal/ads/zzala;

.field private final zzdcj:Lcom/google/android/gms/internal/ads/zzajw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdci:Lcom/google/android/gms/internal/ads/zzala;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdcj:Lcom/google/android/gms/internal/ads/zzajw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdce:Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdci:Lcom/google/android/gms/internal/ads/zzala;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakm;->zzdcj:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V

    return-void
.end method
