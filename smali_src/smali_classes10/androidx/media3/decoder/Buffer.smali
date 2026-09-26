.class public abstract Landroidx/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method protected final d(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x10000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x8000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x20000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->d(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method
