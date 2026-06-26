.class final Lcom/google/android/gms/internal/ads/zzbiv;
.super Lcom/google/android/gms/internal/ads/zzbjb;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzajq;
.implements Lcom/google/android/gms/internal/ads/zzbgz;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzaap:Ljava/lang/String;

.field private final zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzbtf:Landroid/view/WindowManager;

.field private zzdko:Z

.field private zzdlt:I

.field private zzdlu:I

.field private zzdlx:Ljava/lang/String;

.field private zzeem:Lcom/google/android/gms/internal/ads/zzadg;

.field private final zzejd:Lcom/google/android/gms/internal/ads/zzwj;

.field private final zzekn:Lcom/google/android/gms/internal/ads/zzbim;

.field private final zzeko:Lcom/google/android/gms/internal/ads/zzdh;

.field private final zzekp:Lcom/google/android/gms/ads/internal/zzj;

.field private final zzekq:Lcom/google/android/gms/ads/internal/zza;

.field private zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzekx:Lcom/google/android/gms/internal/ads/zzbin;

.field private zzekz:Z

.field private zzela:Z

.field private zzelb:I

.field private zzelc:Z

.field private zzeld:Z

.field private zzele:Lcom/google/android/gms/internal/ads/zzbhq;

.field private zzelf:Z

.field private zzelg:Z

.field private zzelh:Lcom/google/android/gms/internal/ads/zzadx;

.field private zzeli:Lcom/google/android/gms/internal/ads/zzadv;

.field private zzelj:I

.field private zzelk:I

.field private zzell:Lcom/google/android/gms/internal/ads/zzadg;

.field private zzelm:Lcom/google/android/gms/internal/ads/zzadg;

.field private zzeln:Lcom/google/android/gms/internal/ads/zzadh;

.field private zzelo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzelp:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzelr:Lcom/google/android/gms/internal/ads/zzazs;

.field private zzels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbft;",
            ">;"
        }
    .end annotation
.end field

.field private final zzemn:Lcom/google/android/gms/internal/ads/zzbio;

.field private final zzemo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwb:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbim;Lcom/google/android/gms/internal/ads/zzbio;Lcom/google/android/gms/internal/ads/zzbin;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/ads/internal/zzj;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzwj;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbiz;)V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelc:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeld:Z

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlx:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemo:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlu:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlt:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxWidth:I

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxHeight:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzaap:Ljava/lang/String;

    .line 14
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelb:I

    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeko:Lcom/google/android/gms/internal/ads/zzdh;

    .line 17
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 18
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekp:Lcom/google/android/gms/ads/internal/zzj;

    .line 19
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekq:Lcom/google/android/gms/ads/internal/zza;

    .line 20
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtf:Landroid/view/WindowManager;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtf:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    .line 22
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    .line 23
    new-instance p2, Lcom/google/android/gms/internal/ads/zzazs;

    .line 24
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbim;->zzyd()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    .line 25
    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object p2

    iget-object p3, p8, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p5

    invoke-virtual {p2, p1, p3, p5}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 27
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabn()V

    .line 29
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbht;->zzc(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbjb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabr()V

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/ads/zzadh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzadi;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzaap:Ljava/lang/String;

    const-string p7, "make_wv"

    invoke-direct {p3, p6, p7, p5}, Lcom/google/android/gms/internal/ads/zzadi;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Lcom/google/android/gms/internal/ads/zzadi;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object p2

    invoke-virtual {p2, p9}, Lcom/google/android/gms/internal/ads/zzadi;->zzc(Lcom/google/android/gms/internal/ads/zzadi;)V

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzadb;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    const-string p5, "native:view_create"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/internal/ads/zzadh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadg;)V

    .line 37
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelm:Lcom/google/android/gms/internal/ads/zzadg;

    .line 38
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzell:Lcom/google/android/gms/internal/ads/zzadg;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzli()Lcom/google/android/gms/internal/ads/zzaxo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxo;->zzay(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbiv;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelk:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbiv;I)I
    .locals 0

    .line 506
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelk:I

    return p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzxn;)V
    .locals 2

    .line 499
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwt$zzv;->zzop()Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;->zzoo()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 501
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;->zzr(Z)Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;

    .line 502
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;->zzcm(I)Lcom/google/android/gms/internal/ads/zzwt$zzv$zza;

    .line 503
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzwt$zzv;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzxn;->zzcfn:Lcom/google/android/gms/internal/ads/zzwt$zzv;

    return-void
.end method

.method private final zzabk()Z
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaay()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaaz()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->zzyd()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzazt;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    .line 61
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlt:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlu:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxWidth:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxHeight:I

    if-ne v0, v7, :cond_3

    return v1

    .line 63
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlt:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlu:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 64
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlt:I

    .line 65
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlu:I

    .line 66
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxWidth:I

    .line 67
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbiv;->maxHeight:I

    .line 68
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtf:Landroid/view/WindowManager;

    .line 69
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 70
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(IIIIFI)V

    return v1
.end method

.method private final zzabm()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    .line 105
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zza(Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzadg;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzabn()V
    .locals 2

    monitor-enter p0

    .line 334
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 338
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 340
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 335
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabp()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzabo()V
    .locals 2

    monitor-enter p0

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzela:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzli()Lcom/google/android/gms/internal/ads/zzaxo;

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 346
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzela:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzabp()V
    .locals 2

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzela:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzli()Lcom/google/android/gms/internal/ads/zzaxo;

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 351
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzela:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzabq()V
    .locals 2

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbft;

    .line 409
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbft;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final zzabr()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzuw()Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzuw()Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzadi;)Z

    :cond_1
    return-void
.end method

.method private final zzav(Z)V
    .locals 2

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 478
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 480
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazs;->onAttachedToWindow()V

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelf:Z

    .line 283
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 286
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zzaaz()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelg:Z

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 291
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaba()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 294
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabb()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 295
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelg:Z

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabk()Z

    const/4 v0, 0x1

    .line 297
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzav(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazs;->onDetachedFromWindow()V

    .line 302
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 303
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 312
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaba()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 315
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabb()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 316
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelg:Z

    .line 317
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbiv;->zzav(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 317
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 143
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 148
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjb;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 161
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 165
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 167
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 169
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabk()Z

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzaae()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zztk()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzaby()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzaca()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 179
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabz()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcsk:Lcom/google/android/gms/internal/ads/zzacj;

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhq;->getAspectRatio()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 190
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 192
    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 193
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_6

    if-eqz v2, :cond_6

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 202
    :cond_7
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 203
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 206
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 207
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcsn:Lcom/google/android/gms/internal/ads/zzacj;

    .line 208
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "/contentHeight"

    .line 213
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbix;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbix;-><init>(Lcom/google/android/gms/internal/ads/zzbiv;)V

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbiv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 216
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzco(Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 218
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 221
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelk:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    .line 219
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 222
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 210
    :cond_b
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 224
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 227
    :cond_d
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 228
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 229
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 230
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const v0, 0x7fffffff

    goto :goto_5

    :cond_f
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_11

    :cond_10
    move v5, p2

    .line 237
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbin;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbin;->heightPixels:I

    if-le v2, v5, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 238
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzacu;->zzcvg:Lcom/google/android/gms/internal/ads/zzacj;

    .line 239
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v4

    .line 240
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 241
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbin;->widthPixels:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbin;->heightPixels:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_14

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    :goto_8
    if-eqz v2, :cond_15

    move v2, v3

    :cond_15
    const/16 v0, 0x8

    if-eqz v2, :cond_17

    .line 248
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbin;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbin;->heightPixels:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float p1, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzwb:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    const/16 v4, 0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_16

    const/4 p1, 0x4

    .line 250
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 251
    :cond_16
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 252
    :cond_17
    :try_start_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_18

    .line 253
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 254
    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbin;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 174
    :cond_19
    :goto_9
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 375
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 378
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 380
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 383
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelh:Lcom/google/android/gms/internal/ads/zzadx;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelh:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzc(Landroid/view/MotionEvent;)V

    .line 156
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeko:Lcom/google/android/gms/internal/ads/zzdh;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Landroid/view/MotionEvent;)V

    .line 159
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjb;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 424
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelo:Ljava/lang/ref/WeakReference;

    .line 425
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 328
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelb:I

    .line 329
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelb:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopLoading()V
    .locals 2

    .line 391
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 394
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    monitor-enter p0

    .line 261
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadv;)V
    .locals 0

    monitor-enter p0

    .line 433
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeli:Lcom/google/android/gms/internal/ads/zzadv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    monitor-enter p0

    .line 427
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelh:Lcom/google/android/gms/internal/ads/zzadx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbhq;)V
    .locals 1

    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzele:Lcom/google/android/gms/internal/ads/zzbhq;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 437
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzele:Lcom/google/android/gms/internal/ads/zzbhq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbin;)V
    .locals 0

    monitor-enter p0

    .line 267
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;

    .line 268
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzud;)V
    .locals 1

    .line 472
    monitor-enter p0

    .line 473
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzud;->zzbtk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelf:Z

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzud;->zzbtk:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbiv;->zzav(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 474
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;>;)V"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zzb(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbio;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbio;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .locals 2

    .line 127
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "success"

    .line 128
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 131
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaab()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabm()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 87
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaac()V
    .locals 3

    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzll()Lcom/google/android/gms/internal/ads/zzaya;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzpr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzll()Lcom/google/android/gms/internal/ads/zzaya;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzpq()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaya;->zzba(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "volume"

    .line 125
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaad()Landroid/content/Context;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->zzaad()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzaae()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaaf()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelp:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaag()Lcom/google/android/gms/internal/ads/zzbin;
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekx:Lcom/google/android/gms/internal/ads/zzbin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaah()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzaap:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzaai()Lcom/google/android/gms/internal/ads/zzbii;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    return-object v0
.end method

.method public final zzaaj()Landroid/webkit/WebViewClient;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    return-object v0
.end method

.method public final declared-synchronized zzaak()Z
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdko:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaal()Lcom/google/android/gms/internal/ads/zzdh;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeko:Lcom/google/android/gms/internal/ads/zzdh;

    return-object v0
.end method

.method public final zzaam()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final declared-synchronized zzaan()Z
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaao()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzaap()Z
    .locals 1

    monitor-enter p0

    .line 398
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaaq()Z
    .locals 1

    monitor-enter p0

    .line 441
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final zzaar()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazs;->zzwt()V

    return-void
.end method

.method public final zzaas()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelm:Lcom/google/android/gms/internal/ads/zzadg;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelm:Lcom/google/android/gms/internal/ads/zzadg;

    .line 373
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelm:Lcom/google/android/gms/internal/ads/zzadg;

    const-string v2, "native:view_load"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzadh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadg;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzaat()Lcom/google/android/gms/internal/ads/zzadx;
    .locals 1

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelh:Lcom/google/android/gms/internal/ads/zzadx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaau()V
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzaav()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 385
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaaw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzaf(Z)V
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zzaay()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdko:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzao(Z)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 456
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zzao(Z)V

    return-void
.end method

.method public final declared-synchronized zzaq(Z)V
    .locals 1

    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekz:Z

    .line 272
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabn()V

    if-eqz v0, :cond_2

    .line 274
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    if-eqz p1, :cond_1

    const-string p1, "expanded"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzar(Z)V
    .locals 0

    monitor-enter p0

    .line 396
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzas(Z)V
    .locals 1

    monitor-enter p0

    .line 442
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelj:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelj:I

    .line 443
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelj:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_1

    .line 444
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zztn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzat(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 389
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zzat(Z)V

    return-void
.end method

.method protected final declared-synchronized zzaw(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabr()V

    .line 355
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazs;->zzwu()V

    .line 356
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    .line 358
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    .line 359
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->destroy()V

    .line 362
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzmc()Lcom/google/android/gms/internal/ads/zzbfs;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfs;->zzc(Lcom/google/android/gms/internal/ads/zzbdf;)Z

    .line 363
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    monitor-enter p0

    .line 265
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelp:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;)V"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 72
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcok:Lcom/google/android/gms/internal/ads/zzacj;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbid;->zzabt()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbid;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 77
    invoke-super/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbjb;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(ZI)Z
    .locals 2

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->destroy()V

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbiw;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbiw;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 493
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;->zzbyy:Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzwj;->zza(Lcom/google/android/gms/internal/ads/zzwl$zza$zzb;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzbn(Landroid/content/Context;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbim;->setBaseContext(Landroid/content/Context;)V

    .line 321
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzelr:Lcom/google/android/gms/internal/ads/zzazs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->zzyd()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazs;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzemn:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbio;->zzc(ZI)V

    return-void
.end method

.method public final declared-synchronized zzco(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjb;->zzco(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "The webview is destroyed. Ignoring action."

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzdi(I)V
    .locals 5

    if-nez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    .line 93
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zza(Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzadg;[Ljava/lang/String;)Z

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzabm()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzadi;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 101
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzet(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbft;
    .locals 1

    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 418
    monitor-exit p0

    return-object p1

    .line 419
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbft;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzlc()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 399
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeld:Z

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekp:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekp:Lcom/google/android/gms/ads/internal/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzj;->zzlc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzld()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 403
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeld:Z

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekp:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekp:Lcom/google/android/gms/ads/internal/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzj;->zzld()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zztl()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzell:Lcom/google/android/gms/internal/ads/zzadg;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    .line 110
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zza(Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzadg;[Ljava/lang/String;)Z

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadh;->zzqw()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzell:Lcom/google/android/gms/internal/ads/zzadg;

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzell:Lcom/google/android/gms/internal/ads/zzadg;

    const-string v3, "native:view_show"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzadh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadg;)V

    .line 113
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 116
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zztm()V
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbiv;->zzaae()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zztm()V

    :cond_0
    return-void
.end method

.method public final zzya()Lcom/google/android/gms/internal/ads/zzbcw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzyb()Lcom/google/android/gms/internal/ads/zzbhq;
    .locals 1

    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzele:Lcom/google/android/gms/internal/ads/zzbhq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzyc()Lcom/google/android/gms/internal/ads/zzadg;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeem:Lcom/google/android/gms/internal/ads/zzadg;

    return-object v0
.end method

.method public final zzyd()Landroid/app/Activity;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekn:Lcom/google/android/gms/internal/ads/zzbim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim;->zzyd()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzye()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzekq:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final declared-synchronized zzyf()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzdlx:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzyg()Lcom/google/android/gms/internal/ads/zzadh;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeln:Lcom/google/android/gms/internal/ads/zzadh;

    return-object v0
.end method

.method public final zzyh()Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    return-object v0
.end method

.method public final zzyi()I
    .locals 1

    .line 462
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzyj()I
    .locals 1

    .line 463
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzyk()V
    .locals 1

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeli:Lcom/google/android/gms/internal/ads/zzadv;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiv;->zzeli:Lcom/google/android/gms/internal/ads/zzadv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadv;->zzre()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
