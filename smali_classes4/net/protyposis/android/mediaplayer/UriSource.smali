.class public Lnet/protyposis/android/mediaplayer/UriSource;
.super Ljava/lang/Object;
.source "UriSource.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaSource;


# instance fields
.field private mAudioHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    .line 85
    iput-object p3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    .line 46
    iput-object p3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    .line 71
    iput-object p3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    .line 72
    iput-object p4, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    .line 73
    iput-object p5, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAudioExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 120
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 111
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method
