.class public final Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;ILandroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource;
    .locals 8
    .param p5    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    .line 6
    move-result-object v6

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v6, p5}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    .line 12
    .line 13
    :cond_0
    new-instance p5, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource;

    .line 14
    move-object v1, p5

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move v4, p3

    .line 18
    move-object v5, p4

    .line 19
    move-object v7, p6

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource;-><init>(Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;ILandroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V

    .line 23
    return-object p5
.end method
