.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrateKbps:I

.field private customData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private objectDurationMs:J

.field private objectType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private topBitrateKbps:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, -0x7fffffff

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    .line 18
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->customData:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public f()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V

    .line 7
    return-object v0
.end method

.method public g(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->bitrateKbps:I

    return-object p0
.end method

.method public h(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public i(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectDurationMs:J

    .line 15
    return-object p0
.end method

.method public j(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->objectType:Ljava/lang/String;

    return-object p0
.end method

.method public k(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->topBitrateKbps:I

    return-object p0
.end method
