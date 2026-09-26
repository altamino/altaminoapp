.class public Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ProtectionParser;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v1
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p2, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 31
    move-result-object p1

    .line 32
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
