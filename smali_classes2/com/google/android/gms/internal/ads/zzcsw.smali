.class final synthetic Lcom/google/android/gms/internal/ads/zzcsw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzghe:Lcom/google/android/gms/internal/ads/zzcsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsw;->zzghe:Lcom/google/android/gms/internal/ads/zzcsv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvk()Lcom/google/android/gms/internal/ads/zzuu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz v0, :cond_7

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzmz()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuu;->wakeup()V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzmx()Lcom/google/android/gms/internal/ads/zzuo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuo;->zzmm()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuo;->zzmn()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuo;->zzmo()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzaxb;->zzdt(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_4

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v4

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzdu(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvm()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvo()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 25
    :cond_4
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    if-eqz v0, :cond_5

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvn()Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "v_fp_vertical"

    .line 28
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvc()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzvl()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "fingerprint"

    .line 31
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "v_fp"

    .line 33
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_6
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v1, v4

    .line 38
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsu;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
