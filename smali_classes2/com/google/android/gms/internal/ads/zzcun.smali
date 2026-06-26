.class final synthetic Lcom/google/android/gms/internal/ads/zzcun;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzght:Lcom/google/android/gms/internal/ads/zzcul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcul;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzght:Lcom/google/android/gms/internal/ads/zzcul;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcun;->zzght:Lcom/google/android/gms/internal/ads/zzcul;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcul;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
