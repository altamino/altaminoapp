.class public final Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationInfo"
.end annotation


# instance fields
.field public final baseUrls:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSchemeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Landroidx/media3/common/Format;

.field public final inbandEventStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final revisionId:J

.field public final segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase;

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Landroidx/media3/common/Format;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/a0;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase;

    .line 14
    .line 15
    iput-object p4, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 18
    .line 19
    iput-object p6, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p7, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    .line 22
    .line 23
    iput-object p8, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    .line 24
    .line 25
    iput-wide p9, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 26
    return-void
.end method
