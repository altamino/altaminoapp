.class public final Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public final copyright:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final lang:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final moreInformationURL:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final source:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 14
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
    instance-of v1, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

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
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v0, v2

    .line 65
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->title:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    const/16 v2, 0x20f

    .line 14
    add-int/2addr v2, v0

    .line 15
    .line 16
    mul-int/lit8 v2, v2, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->source:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_1
    add-int/2addr v2, v0

    .line 28
    .line 29
    mul-int/lit8 v2, v2, 0x1f

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->copyright:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 37
    move-result v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v0, v1

    .line 40
    :goto_2
    add-int/2addr v2, v0

    .line 41
    .line 42
    mul-int/lit8 v2, v2, 0x1f

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->moreInformationURL:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 50
    move-result v0

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move v0, v1

    .line 53
    :goto_3
    add-int/2addr v2, v0

    .line 54
    .line 55
    mul-int/lit8 v2, v2, 0x1f

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;->lang:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 63
    move-result v1

    .line 64
    :cond_4
    add-int/2addr v2, v1

    .line 65
    return v2
.end method
