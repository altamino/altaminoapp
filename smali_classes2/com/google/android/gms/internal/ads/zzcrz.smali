.class public final Lcom/google/android/gms/internal/ads/zzcrz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcig:Ljava/lang/String;

.field private final zzdlo:Ljava/lang/String;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzggn:Lcom/google/android/gms/internal/ads/zzbqe;

.field private final zzggo:Lcom/google/android/gms/internal/ads/zzcyi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqe;Lcom/google/android/gms/internal/ads/zzcyi;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzdlo:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzcig:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggn:Lcom/google/android/gms/internal/ads/zzbqe;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggo:Lcom/google/android/gms/internal/ads/zzcyi;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final zzalm()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcsa;-><init>(Lcom/google/android/gms/internal/ads/zzcrz;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzo(Landroid/os/Bundle;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggn:Lcom/google/android/gms/internal/ads/zzbqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqe;->zzf(Lcom/google/android/gms/internal/ads/zzxz;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggo:Lcom/google/android/gms/internal/ads/zzcyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyi;->zzams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "quality_signals"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzdlo:Ljava/lang/String;

    const-string v1, "seq_num"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzcig:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
