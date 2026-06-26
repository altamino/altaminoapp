.class final Lcom/google/android/gms/internal/ads/zzcpu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzbnf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgel:Lcom/google/android/gms/internal/ads/zzboc;

.field private final synthetic zzgem:Lcom/google/android/gms/internal/ads/zzcpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzboc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgel:Lcom/google/android/gms/internal/ads/zzboc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpt;->zza(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgel:Lcom/google/android/gms/internal/ads/zzboc;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzboc;->zzadb()Lcom/google/android/gms/internal/ads/zzbrm;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zze(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrm;->onAdFailedToLoad(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zzc(Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbtb;->zzdk(I)V

    const-string v1, "BannerAdManagerShim.onFailure"

    .line 8
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcya;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 3

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnf;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpt;->zza(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zza(Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zza(Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbpc;->destroy()V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcpt;->zza(Lcom/google/android/gms/internal/ads/zzcpt;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzbnf;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zzb(Lcom/google/android/gms/internal/ads/zzcpt;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zzb(Lcom/google/android/gms/internal/ads/zzcpt;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnf;->zzafi()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpc;->zzafl()V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpu;->zzgem:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcpt;->zzc(Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnf;->zzafk()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtb;->zzdk(I)V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
