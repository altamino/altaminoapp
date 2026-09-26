.class public final Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$CmcdKey;,
        Landroidx/media3/exoplayer/upstream/CmcdConfiguration$HeaderKey;
    }
.end annotation


# static fields
.field public static final KEY_BITRATE:Ljava/lang/String; = "br"

.field public static final KEY_BUFFER_LENGTH:Ljava/lang/String; = "bl"

.field public static final KEY_CMCD_OBJECT:Ljava/lang/String; = "CMCD-Object"

.field public static final KEY_CMCD_REQUEST:Ljava/lang/String; = "CMCD-Request"

.field public static final KEY_CMCD_SESSION:Ljava/lang/String; = "CMCD-Session"

.field public static final KEY_CMCD_STATUS:Ljava/lang/String; = "CMCD-Status"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final KEY_MAXIMUM_REQUESTED_BITRATE:Ljava/lang/String; = "rtp"

.field public static final KEY_MEASURED_THROUGHPUT:Ljava/lang/String; = "mtp"

.field public static final KEY_OBJECT_DURATION:Ljava/lang/String; = "d"

.field public static final KEY_OBJECT_TYPE:Ljava/lang/String; = "ot"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sid"

.field public static final KEY_STREAMING_FORMAT:Ljava/lang/String; = "sf"

.field public static final KEY_STREAM_TYPE:Ljava/lang/String; = "st"

.field public static final KEY_TOP_BITRATE:Ljava/lang/String; = "tb"

.field public static final KEY_VERSION:Ljava/lang/String; = "v"

.field public static final MAX_ID_LENGTH:I = 0x40


# instance fields
.field public final contentId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

.field public final sessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v3

    .line 14
    .line 15
    if-gt v3, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v2

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-gt v3, v1, :cond_3

    .line 31
    :cond_2
    move v0, v2

    .line 32
    .line 33
    .line 34
    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    const-string v1, "br"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    const-string v1, "bl"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    const-string v1, "cid"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "rtp"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    const-string v1, "mtp"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    const-string v1, "d"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "ot"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "sid"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "st"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "sf"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "tb"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->a(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method
