.class public final Lcom/google/android/gms/internal/ads/zzcsc;
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
.field private final zzdmd:F

.field private final zzdpe:I

.field private final zzdpm:Z

.field private final zzdpn:Z

.field private final zzdpr:I

.field private final zzdpv:I

.field private final zzdpw:I

.field private final zzggs:Z


# direct methods
.method public constructor <init>(IZZIIIFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpe:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpm:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpn:Z

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpr:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpv:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpw:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdmd:F

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzggs:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzt(Ljava/lang/Object;)V
    .locals 2

    .line 11
    check-cast p1, Landroid/os/Bundle;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpe:I

    const-string v1, "am"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpm:Z

    const-string v1, "ma"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpn:Z

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpr:I

    const-string v1, "muv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpv:I

    const-string v1, "rm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdpw:I

    const-string v1, "riv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzdmd:F

    const-string v1, "android_app_volume"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzggs:Z

    const-string v1, "android_app_muted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
