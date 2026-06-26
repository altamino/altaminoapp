.class public final Lcom/google/android/gms/internal/ads/zzcwx;
.super Ljava/lang/Object;


# instance fields
.field private final zzfxh:Lcom/google/android/gms/internal/ads/zzarx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzarx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    return-void
.end method


# virtual methods
.method public final zzamc()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final zzamd()Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdot:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzame()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdlm:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final zzamf()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdou:Z

    return v0
.end method

.method public final zzamg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdly:Ljava/util/List;

    return-object v0
.end method

.method public final zzamh()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final zzami()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->zzfxh:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdov:Ljava/lang/String;

    return-object v0
.end method
