.class public final Lcom/google/android/gms/internal/ads/zzcvj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcuz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcuz<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdph:Ljava/lang/String;

.field private final zzdps:I

.field private final zzdpt:I

.field private final zzdpu:I

.field private final zzdpz:Z

.field private final zzdqa:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdph:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdps:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpt:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpu:I

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpz:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdqa:I

    return-void
.end method


# virtual methods
.method public final synthetic zzt(Ljava/lang/Object;)V
    .locals 4

    .line 9
    check-cast p1, Landroid/os/Bundle;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdph:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "carrier"

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdps:I

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdps:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "cnt"

    .line 13
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpt:I

    const-string v1, "gnt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpu:I

    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "device"

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "network"

    .line 18
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 19
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdqa:I

    const-string v1, "active_network_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzdpz:Z

    const-string v1, "active_network_metered"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
