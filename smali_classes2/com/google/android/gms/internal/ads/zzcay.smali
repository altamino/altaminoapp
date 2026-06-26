.class final synthetic Lcom/google/android/gms/internal/ads/zzcay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzfrp:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcay;->zzfrp:Lcom/google/android/gms/internal/ads/zzcau;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcay;->zzdbk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcay;->zzfrp:Lcom/google/android/gms/internal/ads/zzcau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcay;->zzdbk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
