.class public final Lcom/google/android/gms/internal/ads/zzcdb;
.super Lcom/google/android/gms/internal/ads/zzbpc;


# instance fields
.field private final zzdqw:Lcom/google/android/gms/internal/ads/zzatq;

.field private final zzflh:Lcom/google/android/gms/internal/ads/zzbup;

.field private final zzflj:Lcom/google/android/gms/internal/ads/zzbpv;

.field private final zzflk:Lcom/google/android/gms/internal/ads/zzdan;

.field private zzfll:Z

.field private final zzflm:Lcom/google/android/gms/internal/ads/zzbwz;

.field private final zzftc:Lcom/google/android/gms/internal/ads/zzbrp;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbwz;Lcom/google/android/gms/internal/ads/zzbup;Lcom/google/android/gms/internal/ads/zzbrp;Lcom/google/android/gms/internal/ads/zzbry;Lcom/google/android/gms/internal/ads/zzbpv;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzdan;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzfll:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzlj:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflm:Lcom/google/android/gms/internal/ads/zzbwz;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflh:Lcom/google/android/gms/internal/ads/zzbup;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzftc:Lcom/google/android/gms/internal/ads/zzbrp;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzfiq:Lcom/google/android/gms/internal/ads/zzbry;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflj:Lcom/google/android/gms/internal/ads/zzbpv;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflk:Lcom/google/android/gms/internal/ads/zzdan;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaup;

    iget-object p2, p7, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnx:Lcom/google/android/gms/internal/ads/zzato;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaup;-><init>(Lcom/google/android/gms/internal/ads/zzato;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzdqw:Lcom/google/android/gms/internal/ads/zzatq;

    return-void
.end method


# virtual methods
.method public final isClosed()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflj:Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpv;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzadd()Lcom/google/android/gms/internal/ads/zzbry;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzfiq:Lcom/google/android/gms/internal/ads/zzbry;

    return-object v0
.end method

.method public final zzb(ZLandroid/app/Activity;)V
    .locals 2

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcoe:Lcom/google/android/gms/internal/ads/zzacj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzlj:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzaq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ad can not be shown when app is not in foreground."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzftc:Lcom/google/android/gms/internal/ads/zzbrp;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrp;->zzcs(I)V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcof:Lcom/google/android/gms/internal/ads/zzacj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflk:Lcom/google/android/gms/internal/ads/zzdan;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzffa:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxo;->zzcep:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zzgb(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzfll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzftc:Lcom/google/android/gms/internal/ads/zzbrp;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbrp;->zzcs(I)V

    return-void

    .line 27
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzfll:Z

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflh:Lcom/google/android/gms/internal/ads/zzbup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbup;->zzagu()V

    if-nez p2, :cond_3

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzlj:Landroid/content/Context;

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzflm:Lcom/google/android/gms/internal/ads/zzbwz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbwz;->zza(ZLandroid/content/Context;)V

    return-void
.end method

.method public final zzqh()Lcom/google/android/gms/internal/ads/zzatq;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdb;->zzdqw:Lcom/google/android/gms/internal/ads/zzatq;

    return-object v0
.end method
