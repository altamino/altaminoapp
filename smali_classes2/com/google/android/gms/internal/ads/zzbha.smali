.class public Lcom/google/android/gms/internal/ads/zzbha;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbii;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static final zzejb:[Ljava/lang/String;

.field private static final zzejc:[Ljava/lang/String;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbsy:Z

.field private zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

.field private zzczo:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzczp:Lcom/google/android/gms/internal/ads/zzagx;

.field private zzdaj:Lcom/google/android/gms/ads/internal/zzb;

.field private zzdak:Lcom/google/android/gms/internal/ads/zzapr;

.field protected zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

.field private zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

.field private zzdok:Z

.field private final zzejd:Lcom/google/android/gms/internal/ads/zzwj;

.field private final zzeje:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaho<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private zzejf:Lcom/google/android/gms/internal/ads/zzbij;

.field private zzejg:Lcom/google/android/gms/internal/ads/zzbik;

.field private zzejh:Lcom/google/android/gms/internal/ads/zzbil;

.field private zzeji:Z

.field private zzejj:Z

.field private zzejk:Z

.field private final zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

.field protected zzejm:Lcom/google/android/gms/internal/ads/zzavb;

.field private zzejn:Z

.field private zzejo:Z

.field private zzejp:I

.field private zzejq:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "HOST_LOOKUP"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "AUTHENTICATION"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "PROXY_AUTHENTICATION"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "CONNECT"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "IO"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "TIMEOUT"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "REDIRECT_LOOP"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "UNSUPPORTED_SCHEME"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "FAILED_SSL_HANDSHAKE"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "BAD_URL"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "FILE"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "FILE_NOT_FOUND"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    const-string v9, "TOO_MANY_REQUESTS"

    aput-object v9, v0, v8

    .line 387
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzejb:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "NOT_YET_VALID"

    aput-object v7, v0, v1

    const-string v1, "EXPIRED"

    aput-object v1, v0, v2

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v3

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v4

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v5

    const-string v1, "INVALID"

    aput-object v1, v0, v6

    .line 388
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha;->zzejc:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzwj;Z)V
    .locals 6

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaqa;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaad()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacf;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacf;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbha;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzwj;ZLcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzapr;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzwj;ZLcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzapr;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 7
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    .line 8
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    const/4 p5, 0x0

    .line 9
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejd:Lcom/google/android/gms/internal/ads/zzwj;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 12
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzbsy:Z

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V
    .locals 2

    .line 88
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavb;->zzud()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 89
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzavb;->zzj(Landroid/view/View;)V

    .line 90
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavb;->zzud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhc;-><init>(Lcom/google/android/gms/internal/ads/zzbha;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zztb()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlf()Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 162
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzdk(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbha;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V
    .locals 0

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void
.end method

.method private final zzabc()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzabh()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    if-eqz v0, :cond_2

    .line 120
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejp:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejo:Z

    if-eqz v0, :cond_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejo:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbij;->zzae(Z)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaas()V

    return-void
.end method

.method private static zzabi()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 310
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcom:Lcom/google/android/gms/internal/ads/zzacj;

    .line 311
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-gt v0, v2, :cond_8

    .line 318
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    .line 319
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 320
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 321
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_7

    .line 326
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 327
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 328
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    .line 329
    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 330
    new-instance v3, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzazx;-><init>()V

    const/4 v4, 0x0

    .line 331
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 332
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 333
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v4, v3, :cond_6

    const/16 v3, 0x190

    if-ge v4, v3, :cond_6

    const-string v3, "Location"

    .line 335
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 338
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Protocol is null"

    .line 341
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v5, "http"

    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "https"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string p1, "Unsupported scheme: "

    .line 344
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "Redirecting to "

    .line 346
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v4

    goto/16 :goto_0

    .line 337
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 325
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 240
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcqo:Lcom/google/android/gms/internal/ads/zzacj;

    .line 241
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    .line 245
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 246
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 249
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 250
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 251
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    const-string p3, "host"

    .line 253
    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 255
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    move-object v2, p1

    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 217
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha;->zzh(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 76
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaao()V

    .line 79
    monitor-exit p1

    return-void

    .line 80
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejn:Z

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    if-eqz p1, :cond_1

    .line 84
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbik;->zzrw()V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabh()V

    return-void

    :catchall_0
    move-exception p2

    .line 80
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 222
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha;->zzejb:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 223
    aget-object v0, v1, v0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/ads/zzbha;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_1

    .line 229
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_0

    .line 230
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha;->zzejc:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 231
    aget-object v0, v1, v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 234
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzli()Lcom/google/android/gms/internal/ads/zzaxo;

    .line 236
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssl_err"

    .line 237
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbha;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 385
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzb(ZI)Z

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzuf()V

    .line 192
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabc()V

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 196
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    .line 197
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 198
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    .line 199
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    .line 200
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    .line 201
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    const/4 v2, 0x0

    .line 202
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    .line 203
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzbsy:Z

    .line 204
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejj:Z

    .line 205
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejk:Z

    .line 206
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 207
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejh:Lcom/google/android/gms/internal/ads/zzbil;

    .line 208
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zzw(Z)V

    .line 210
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 211
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbha;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 364
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 259
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbha;->zzh(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 263
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 264
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    if-eqz v0, :cond_5

    .line 268
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxr;->onAdClicked()V

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_4

    .line 270
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzavb;->zzdk(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    .line 272
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 273
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    .line 274
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaal()Lcom/google/android/gms/internal/ads/zzdh;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 275
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdh;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 277
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 278
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 279
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyd()Landroid/app/Activity;

    move-result-object v4

    .line 280
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdi; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    .line 283
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 284
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzb;->zzkx()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 288
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zzbk(Ljava/lang/String;)V

    goto :goto_7

    .line 285
    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 286
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    .line 289
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final zza(IIZ)V
    .locals 1

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzj(II)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzapr;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v0

    .line 126
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 129
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 130
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbij;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbik;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;ZLcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzaqc;Lcom/google/android/gms/internal/ads/zzavb;)V
    .locals 1

    if-nez p8, :cond_0

    .line 21
    new-instance p8, Lcom/google/android/gms/ads/internal/zzb;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p7

    const/4 v0, 0x0

    invoke-direct {p8, p7, p10, v0}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavb;Lcom/google/android/gms/internal/ads/zzark;)V

    .line 22
    :cond_0
    new-instance p7, Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p7, v0, p9}, Lcom/google/android/gms/internal/ads/zzapr;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzaqc;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 23
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    .line 24
    sget-object p7, Lcom/google/android/gms/internal/ads/zzacu;->zzcov:Lcom/google/android/gms/internal/ads/zzacj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p10

    invoke-virtual {p10, p7}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p7

    .line 26
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 27
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Lcom/google/android/gms/internal/ads/zzagv;)V

    const-string p10, "/adMetadata"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 28
    :cond_1
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {p7, p4}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Lcom/google/android/gms/internal/ads/zzagx;)V

    const-string p10, "/appEvent"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 29
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczz:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/backButton"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 30
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdaa:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/refresh"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 31
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczq:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/canOpenURLs"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 32
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczr:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/canOpenIntents"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 33
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczs:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/click"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 34
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczt:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/close"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 35
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczu:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/customClose"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 36
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdad:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/instrument"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 37
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdaf:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/delayPageLoaded"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 38
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdag:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/delayPageClosed"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 39
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdah:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/getLocationInfo"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 40
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczv:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/httpTrack"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 41
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczw:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/log"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 42
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahr;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {p7, p8, p10, p9}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;Lcom/google/android/gms/internal/ads/zzaqc;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 43
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    const-string p9, "/mraidLoaded"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 44
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {p7, p8, p9}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;)V

    const-string p9, "/open"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 45
    new-instance p7, Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-direct {p7}, Lcom/google/android/gms/internal/ads/zzbgc;-><init>()V

    const-string p9, "/precache"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 46
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczy:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/touch"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 47
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdab:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/video"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 48
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdac:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/videoMeta"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzme()Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object p7

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-virtual {p7, p9}, Lcom/google/android/gms/internal/ads/zzavg;->zzx(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 50
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahq;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 51
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p7, p9}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Landroid/content/Context;)V

    const-string p9, "/logScionEvent"

    .line 52
    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    .line 54
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    .line 56
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    .line 57
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 58
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    .line 60
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .locals 5
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

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 182
    monitor-exit v0

    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaho;

    .line 185
    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 3
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

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 138
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v1

    .line 139
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 140
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 143
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhe;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 144
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 145
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 147
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v1

    .line 148
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 149
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 152
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhe;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 153
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 154
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzaax()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final zzaay()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzbsy:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaaz()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejj:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaba()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 70
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzabb()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 73
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzabd()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    .line 101
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabc()V

    .line 104
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Lcom/google/android/gms/internal/ads/zzbha;Lcom/google/android/gms/internal/ads/zzavb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final zzabe()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 108
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejk:Z

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejp:I

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabh()V

    return-void

    :catchall_0
    move-exception v1

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzabf()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejp:I

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabh()V

    return-void
.end method

.method public final zzabg()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejo:Z

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha;->zzabh()V

    return-void
.end method

.method public final zzabj()Lcom/google/android/gms/internal/ads/zzavb;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    return-object v0
.end method

.method public final zzao(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    return-void
.end method

.method public final zzat(Z)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdok:Z

    return-void
.end method

.method public final zzau(Z)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 383
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzejj:Z

    .line 384
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V
    .locals 2
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

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 177
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(ZI)V
    .locals 10

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v0

    .line 133
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 135
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILcom/google/android/gms/internal/ads/zzbai;)V

    .line 136
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbha;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method protected final zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 293
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdok:Z

    .line 294
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzavx;->zzd(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbha;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvv;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzvv;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlm()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzvv;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvs;->zznh()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvs;->zzni()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 302
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazx;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcqc:Lcom/google/android/gms/internal/ads/zzacj;

    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 308
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/net/Uri;)V
    .locals 6

    .line 367
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeje:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 370
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzi(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    .line 371
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbad;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    .line 372
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaho;

    .line 377
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaho;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void

    .line 380
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(II)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapr;->zzi(II)V

    :cond_0
    return-void
.end method

.method public final zzth()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 355
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzeji:Z

    const/4 v1, 0x1

    .line 356
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbha;->zzbsy:Z

    .line 357
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbhb;-><init>(Lcom/google/android/gms/internal/ads/zzbha;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
