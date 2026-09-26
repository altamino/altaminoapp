.class public final Landroidx/media3/exoplayer/dash/manifest/BaseUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT_DVB_PRIORITY:I = 0x1

.field public static final DEFAULT_WEIGHT:I = 0x1

.field public static final PRIORITY_UNSET:I = -0x80000000


# instance fields
.field public final priority:I

.field public final serviceLocation:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    iput p4, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 15
    .line 16
    iget v3, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 17
    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    .line 20
    iget v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    iget v1, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x3

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 35
    move-result v0

    .line 36
    return v0
.end method
