.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maximumRequestedThroughputKbps:I


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 9
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->customData:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V

    .line 7
    return-object v0
.end method

.method public d(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, -0x7fffffff

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_2
    add-int/lit8 p1, p1, 0x32

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x64

    .line 22
    .line 23
    mul-int/lit8 p1, p1, 0x64

    .line 24
    .line 25
    :goto_2
    iput p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 26
    return-object p0
.end method
