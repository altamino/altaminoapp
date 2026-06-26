.class final synthetic Lcom/google/android/gms/internal/ads/zzctt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcto;


# instance fields
.field private final zzghk:Lcom/google/android/gms/internal/ads/zzctp;

.field private final zzghm:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctp;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctt;->zzghk:Lcom/google/android/gms/internal/ads/zzctp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctt;->zzghm:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctt;->zzghk:Lcom/google/android/gms/internal/ads/zzctp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctt;->zzghm:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctp;->zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
