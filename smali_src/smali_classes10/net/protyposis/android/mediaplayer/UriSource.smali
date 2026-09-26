.class public Lnet/protyposis/android/mediaplayer/UriSource;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    iput-object p4, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

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

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 10
    .line 11
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioHeaders:Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getAudioHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getAudioUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mUri:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/UriSource;->mHeaders:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 15
    return-object v0
.end method
