.class final synthetic Lcom/google/android/gms/internal/ads/zzcbk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdsr:Ljava/lang/String;

.field private final zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzdbk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzdsr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzfrv:Lcom/google/android/gms/internal/ads/zzcbi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzdbk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbk;->zzdsr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcbi;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
