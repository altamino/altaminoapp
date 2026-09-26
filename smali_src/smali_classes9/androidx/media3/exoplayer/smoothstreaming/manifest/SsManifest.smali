.class public Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/offline/FilterableManifest;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;,
        Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNSET_LOOKAHEAD:I = -0x1


# instance fields
.field public final durationUs:J

.field public final dvrWindowLengthUs:J

.field public final isLive:Z

.field public final lookAheadCount:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final streamElements:[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;


# direct methods
.method private constructor <init>(IIJJIZLandroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 0
    .param p9    # Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->majorVersion:I

    iput p2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->minorVersion:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->durationUs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    iput p7, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    iput-boolean p8, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    iput-object p9, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    iput-object p10, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->streamElements:[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    return-void
.end method

.method public constructor <init>(IIJJJIZLandroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 21
    .param p11    # Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-wide v13, v8

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p5

    move-wide/from16 v6, p3

    .line 1
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    move-result-wide v2

    move-wide v13, v2

    :goto_0
    cmp-long v0, p7, v0

    if-nez v0, :cond_1

    :goto_1
    move-wide v15, v8

    goto :goto_2

    :cond_1
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p7

    move-wide/from16 v6, p3

    .line 2
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    move-result-wide v8

    goto :goto_1

    :goto_2
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v17, p9

    move/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    .line 3
    invoke-direct/range {v10 .. v20}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;-><init>(IIJJIZLandroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;)",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v5

    .line 26
    .line 27
    if-ge v4, v5, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    check-cast v5, Landroidx/media3/common/StreamKey;

    .line 34
    .line 35
    iget-object v6, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->streamElements:[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 36
    .line 37
    iget v7, v5, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 38
    .line 39
    aget-object v6, v6, v7

    .line 40
    .line 41
    if-eq v6, v2, :cond_0

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    new-array v7, v3, [Landroidx/media3/common/Format;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    move-result-object v7

    .line 50
    .line 51
    check-cast v7, [Landroidx/media3/common/Format;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->b([Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    .line 63
    :cond_0
    iget-object v2, v6, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Landroidx/media3/common/Format;

    .line 64
    .line 65
    iget v5, v5, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 66
    .line 67
    aget-object v2, v2, v5

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    move-object v2, v6

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_1
    if-eqz v2, :cond_2

    .line 77
    .line 78
    new-array v0, v3, [Landroidx/media3/common/Format;

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, [Landroidx/media3/common/Format;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->b([Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    :cond_2
    new-array v0, v3, [Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    move-object v10, p1

    .line 99
    .line 100
    check-cast v10, [Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 101
    .line 102
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 103
    .line 104
    iget v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->majorVersion:I

    .line 105
    .line 106
    iget v2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->minorVersion:I

    .line 107
    .line 108
    iget-wide v3, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->durationUs:J

    .line 109
    .line 110
    iget-wide v5, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    .line 111
    .line 112
    iget v7, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    .line 113
    .line 114
    iget-boolean v8, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 115
    .line 116
    iget-object v9, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 117
    move-object v0, p1

    .line 118
    .line 119
    .line 120
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;-><init>(IIJJIZLandroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;)V

    .line 121
    return-object p1
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->a(Ljava/util/List;)Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
