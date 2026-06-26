.class public final Lcom/google/android/gms/internal/ads/zzaqa;
.super Lcom/google/android/gms/internal/ads/zzaqb;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaho;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaqb;",
        "Lcom/google/android/gms/internal/ads/zzaho<",
        "Lcom/google/android/gms/internal/ads/zzbgz;",
        ">;"
    }
.end annotation


# instance fields
.field private density:F

.field private rotation:I

.field private final zzbtf:Landroid/view/WindowManager;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

.field private zzdiw:Landroid/util/DisplayMetrics;

.field private zzdix:I

.field private zzdiy:I

.field private zzdiz:I

.field private zzdja:I

.field private zzdjb:I

.field private zzdjc:I

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacf;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdix:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiy:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiz:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdja:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjb:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjc:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

    const-string/jumbo p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzbtf:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 25
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzbtf:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->density:F

    .line 29
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->rotation:I

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdix:I

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiy:I

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyd()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Landroid/app/Activity;)[I

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiz:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiw:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdja:I

    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdix:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiz:I

    .line 38
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiy:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdja:I

    .line 43
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdix:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjb:I

    .line 45
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiy:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjc:I

    goto :goto_2

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->measure(II)V

    .line 48
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdix:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiy:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiz:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdja:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqa;->density:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqa;->rotation:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(IIIIFI)V

    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzapz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzqi()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzy(Z)Lcom/google/android/gms/internal/ads/zzapz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzqj()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzx(Z)Lcom/google/android/gms/internal/ads/zzapz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzql()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzz(Z)Lcom/google/android/gms/internal/ads/zzapz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdiv:Lcom/google/android/gms/internal/ads/zzacf;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzqk()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzapz;->zzaa(Z)Lcom/google/android/gms/internal/ads/zzapz;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzapz;->zzab(Z)Lcom/google/android/gms/internal/ads/zzapz;

    move-result-object p1

    .line 58
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzapx;-><init>(Lcom/google/android/gms/internal/ads/zzapz;Lcom/google/android/gms/internal/ads/zzapy;)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapx;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getLocationOnScreen([I)V

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/content/Context;I)I

    move-result v0

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/content/Context;I)I

    move-result p2

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzj(II)V

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzeo(Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(II)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjb:I

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzlj:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjc:I

    :cond_2
    sub-int v0, p2, v1

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdjc:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb(IIII)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbii;->zzi(II)V

    return-void
.end method
