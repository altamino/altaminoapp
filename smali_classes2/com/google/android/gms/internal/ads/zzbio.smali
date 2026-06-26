.class public final Lcom/google/android/gms/internal/ads/zzbio;
.super Lcom/google/android/gms/internal/ads/zzbiz;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbii;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzbsy:Z

.field private zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

.field private zzczo:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzczp:Lcom/google/android/gms/internal/ads/zzagx;

.field private zzdaj:Lcom/google/android/gms/ads/internal/zzb;

.field private zzdak:Lcom/google/android/gms/internal/ads/zzapr;

.field protected zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

.field private zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

.field private zzdok:Z

.field private zzejf:Lcom/google/android/gms/internal/ads/zzbij;

.field private zzejg:Lcom/google/android/gms/internal/ads/zzbik;

.field private zzejh:Lcom/google/android/gms/internal/ads/zzbil;

.field private zzeji:Z

.field private zzejj:Z

.field private zzejk:Z

.field private zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

.field private zzejm:Lcom/google/android/gms/internal/ads/zzavb;

.field private zzejn:Z

.field private zzejo:Z

.field private zzejp:I

.field private zzejq:Landroid/view/View$OnAttachStateChangeListener;

.field private final zzemk:Lcom/google/android/gms/internal/ads/zzaju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaju<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbiz;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeji:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V
    .locals 2

    .line 86
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavb;->zzud()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 87
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzavb;->zzj(Landroid/view/View;)V

    .line 88
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavb;->zzud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbiq;-><init>(Lcom/google/android/gms/internal/ads/zzbio;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zztb()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlf()Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 160
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzdk(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbio;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void
.end method

.method private final zzabc()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzabh()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    if-eqz v0, :cond_2

    .line 118
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejp:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejo:Z

    if-eqz v0, :cond_2

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejo:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbij;->zzae(Z)V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaas()V

    return-void
.end method

.method private static zzabi()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 263
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcom:Lcom/google/android/gms/internal/ads/zzacj;

    .line 264
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
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

.method private final zze(Lcom/google/android/gms/internal/ads/zzbja;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_8

    .line 271
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    .line 272
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 273
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 274
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbja;->zzab:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_0
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_7

    .line 279
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 280
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 281
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    .line 282
    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 283
    new-instance v4, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzazx;-><init>()V

    const/4 v5, 0x0

    .line 284
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 285
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 286
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v5, v4, :cond_6

    const/16 v4, 0x190

    if-ge v5, v4, :cond_6

    const-string v4, "Location"

    .line 288
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 291
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Protocol is null"

    .line 294
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbio;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v6, "http"

    .line 296
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "https"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string p1, "Unsupported scheme: "

    .line 297
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbio;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "Redirecting to "

    .line 299
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v5

    goto/16 :goto_0

    .line 290
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 278
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzuf()V

    .line 166
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabc()V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaju;->reset()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    .line 172
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 173
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    .line 174
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    .line 175
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    .line 176
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    .line 177
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 178
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejh:Lcom/google/android/gms/internal/ads/zzbil;

    .line 179
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zzw(Z)V

    .line 181
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 182
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

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 322
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzb(ZI)Z

    move-result p1

    return p1
.end method

.method public final zza(IIZ)V
    .locals 1

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzj(II)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzapr;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 8

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v0

    .line 124
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 127
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 128
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbgz;Z)V
    .locals 4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqa;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaad()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacf;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacf;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzbsy:Z

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbij;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejf:Lcom/google/android/gms/internal/ads/zzbij;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbik;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbja;)V
    .locals 0

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejn:Z

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbik;->zzrw()V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejg:Lcom/google/android/gms/internal/ads/zzbik;

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabh()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;ZLcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzaqc;Lcom/google/android/gms/internal/ads/zzavb;)V
    .locals 1

    if-nez p8, :cond_0

    .line 27
    new-instance p8, Lcom/google/android/gms/ads/internal/zzb;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p7

    const/4 v0, 0x0

    invoke-direct {p8, p7, p10, v0}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavb;Lcom/google/android/gms/internal/ads/zzark;)V

    .line 28
    :cond_0
    new-instance p7, Lcom/google/android/gms/internal/ads/zzapr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p7, v0, p9}, Lcom/google/android/gms/internal/ads/zzapr;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzaqc;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 29
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    .line 30
    sget-object p7, Lcom/google/android/gms/internal/ads/zzacu;->zzcov:Lcom/google/android/gms/internal/ads/zzacj;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p10

    invoke-virtual {p10, p7}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p7

    .line 32
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 33
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Lcom/google/android/gms/internal/ads/zzagv;)V

    const-string p10, "/adMetadata"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 34
    :cond_1
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {p7, p4}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Lcom/google/android/gms/internal/ads/zzagx;)V

    const-string p10, "/appEvent"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 35
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczz:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/backButton"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 36
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdaa:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/refresh"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 37
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczq:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/canOpenURLs"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 38
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczr:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/canOpenIntents"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 39
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczs:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/click"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 40
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczt:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/close"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 41
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczu:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/customClose"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 42
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdad:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/instrument"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 43
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdaf:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/delayPageLoaded"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 44
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdag:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/delayPageClosed"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 45
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdah:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/getLocationInfo"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 46
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczv:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/httpTrack"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 47
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczw:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p10, "/log"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 48
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahr;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {p7, p8, p10, p9}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;Lcom/google/android/gms/internal/ads/zzaqc;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 49
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejl:Lcom/google/android/gms/internal/ads/zzaqa;

    const-string p9, "/mraidLoaded"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 50
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {p7, p8, p9}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;)V

    const-string p9, "/open"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 51
    new-instance p7, Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-direct {p7}, Lcom/google/android/gms/internal/ads/zzbgc;-><init>()V

    const-string p9, "/precache"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 52
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzczy:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/touch"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 53
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdab:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/video"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 54
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagz;->zzdac:Lcom/google/android/gms/internal/ads/zzaho;

    const-string p9, "/videoMeta"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzme()Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object p7

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-virtual {p7, p9}, Lcom/google/android/gms/internal/ads/zzavg;->zzx(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 56
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahq;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 57
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p7, p9}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Landroid/content/Context;)V

    const-string p9, "/logScionEvent"

    .line 58
    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    .line 60
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    .line 62
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    .line 63
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 64
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    .line 66
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeji:Z

    return-void
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

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 136
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v1

    .line 137
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 138
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 141
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbis;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 142
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 143
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 145
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v1

    .line 146
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 150
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbis;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzczo:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzczp:Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 151
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 152
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzaax()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final zzaay()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzbsy:Z

    return v0
.end method

.method public final zzaaz()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejj:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaba()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzabb()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 77
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzabd()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    .line 99
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavb;I)V

    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabc()V

    .line 102
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbir;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbir;-><init>(Lcom/google/android/gms/internal/ads/zzbio;Lcom/google/android/gms/internal/ads/zzavb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejq:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final zzabe()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 106
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejk:Z

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejp:I

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabh()V

    return-void

    :catchall_0
    move-exception v1

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzabf()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejp:I

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabh()V

    return-void
.end method

.method public final zzabg()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejo:Z

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzabh()V

    return-void
.end method

.method public final zzabj()Lcom/google/android/gms/internal/ads/zzavb;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    return-object v0
.end method

.method public final zzao(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeji:Z

    return-void
.end method

.method public final zzat(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdok:Z

    return-void
.end method

.method public final zzau(Z)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 318
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejj:Z

    .line 319
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbja;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Landroid/net/Uri;)Z

    return-void
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

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaju;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-void
.end method

.method public final zzc(ZI)V
    .locals 10

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v0

    .line 131
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkm:Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdkq:Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 133
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzu;Lcom/google/android/gms/internal/ads/zzbgz;ZILcom/google/android/gms/internal/ads/zzbai;)V

    .line 134
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbja;)Z
    .locals 11

    .line 189
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 190
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbja;->uri:Landroid/net/Uri;

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 193
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeji:Z

    if-eqz v1, :cond_6

    .line 194
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 195
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

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

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    if-eqz v0, :cond_5

    .line 198
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxr;->onAdClicked()V

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v0, :cond_4

    .line 200
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavb;->zzdk(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzcgi:Lcom/google/android/gms/internal/ads/zzxr;

    :cond_5
    return v4

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaal()Lcom/google/android/gms/internal/ads/zzdh;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 205
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdh;->zzc(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 206
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 207
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 208
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 209
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyd()Landroid/app/Activity;

    move-result-object v5

    .line 210
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    const-string v1, "Unable to append parameter to URL: "

    .line 213
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 214
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzb;->zzkx()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzb;->zzbk(Ljava/lang/String;)V

    goto :goto_7

    .line 215
    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 216
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

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_7

    :cond_b
    const-string v0, "AdWebView unable to handle URL: "

    .line 219
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbja;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const-string v0, ""

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzejm:Lcom/google/android/gms/internal/ads/zzavb;

    if-eqz v1, :cond_0

    .line 222
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbja;->zzab:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzavb;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    .line 224
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzth()V

    .line 228
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcmu:Lcom/google/android/gms/internal/ads/zzacj;

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 231
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcmt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 234
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcms:Lcom/google/android/gms/internal/ads/zzacj;

    .line 237
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    check-cast v1, Ljava/lang/String;

    .line 239
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 240
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    .line 241
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    return-object v1

    .line 245
    :cond_4
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdjm:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 246
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdok:Z

    .line 247
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzavx;->zzd(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze(Lcom/google/android/gms/internal/ads/zzbja;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 250
    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbja;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzvv;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzvv;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 252
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlm()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzvv;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvs;->zznh()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvs;->zzni()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 255
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazx;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcqc:Lcom/google/android/gms/internal/ads/zzacj;

    .line 256
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze(Lcom/google/android/gms/internal/ads/zzbja;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    return-object v2

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 261
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbio;->zzabi()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/net/Uri;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzemk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzh(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzi(II)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapr;->zzi(II)V

    :cond_0
    return-void
.end method

.method public final zzth()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbio;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 308
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeji:Z

    const/4 v1, 0x1

    .line 309
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbio;->zzbsy:Z

    .line 310
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbip;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbip;-><init>(Lcom/google/android/gms/internal/ads/zzbio;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
