.class public final Lcom/google/android/gms/internal/ads/zzcvf;
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
.field private final zzdpf:Z

.field private final zzdpg:Z

.field private final zzdpi:Ljava/lang/String;

.field private final zzdpj:Z

.field private final zzdpk:Z

.field private final zzdpl:Z

.field private final zzdpo:Ljava/lang/String;

.field private final zzdpp:Ljava/lang/String;

.field private final zzdpq:Ljava/lang/String;

.field private final zzdqd:Z

.field private final zzgil:Ljava/lang/String;

.field private final zzgim:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpf:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpg:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpi:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpj:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpk:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpl:Z

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpo:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpp:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpq:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Ljava/lang/String;

    .line 12
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdqd:Z

    .line 13
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgim:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zzt(Ljava/lang/Object;)V
    .locals 3

    .line 15
    check-cast p1, Landroid/os/Bundle;

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpf:Z

    const-string v1, "cog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpg:Z

    const-string v1, "coh"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpi:Ljava/lang/String;

    const-string v1, "gl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpj:Z

    const-string v1, "simulator"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpk:Z

    const-string v1, "is_latchsky"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpl:Z

    const-string v1, "is_sidewinder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpo:Ljava/lang/String;

    const-string v1, "hl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpp:Ljava/lang/String;

    const-string v1, "mv"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgim:Ljava/lang/String;

    const-string v1, "submodel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    .line 25
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Ljava/lang/String;

    const-string v0, "build"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "browser"

    .line 28
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 29
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdqd:Z

    const-string v2, "is_browser_custom_tabs_capable"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "play_store"

    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzdpq:Ljava/lang/String;

    const-string v1, "package_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
