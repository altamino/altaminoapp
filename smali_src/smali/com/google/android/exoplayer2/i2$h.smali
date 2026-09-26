.class public Lcom/google/android/exoplayer2/i2$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final adsConfiguration:Lcom/google/android/exoplayer2/i2$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final drmConfiguration:Lcom/google/android/exoplayer2/i2$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitleConfigurations:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/i2$l;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/i2$k;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/a0;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/i2$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/i2$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/i2$f;",
            "Lcom/google/android/exoplayer2/i2$b;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/i2$l;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    iput-object p4, p0, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    iput-object p5, p0, Lcom/google/android/exoplayer2/i2$h;->streamKeys:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 5
    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/i2$l;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/i2$l;->a()Lcom/google/android/exoplayer2/i2$l$a;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplayer2/i2$l$a;->a(Lcom/google/android/exoplayer2/i2$l$a;)Lcom/google/android/exoplayer2/i2$k;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/i2$h;->subtitles:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/a0;Ljava/lang/Object;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/i2$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/i2$f;Lcom/google/android/exoplayer2/i2$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/a0;Ljava/lang/Object;)V

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
    instance-of v1, p1, Lcom/google/android/exoplayer2/i2$h;

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
    check-cast p1, Lcom/google/android/exoplayer2/i2$h;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->streamKeys:Ljava/util/List;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->streamKeys:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 75
    .line 76
    iget-object v3, p1, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move v0, v2

    .line 95
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$f;->hashCode()I

    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    move v1, v2

    .line 41
    goto :goto_2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i2$b;->hashCode()I

    .line 45
    move-result v1

    .line 46
    :goto_2
    add-int/2addr v0, v1

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->streamKeys:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    move v1, v2

    .line 63
    goto :goto_3

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 67
    move-result v1

    .line 68
    :goto_3
    add-int/2addr v0, v1

    .line 69
    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/common/collect/a0;->hashCode()I

    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    goto :goto_4

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 88
    move-result v2

    .line 89
    :goto_4
    add-int/2addr v0, v2

    .line 90
    return v0
.end method
