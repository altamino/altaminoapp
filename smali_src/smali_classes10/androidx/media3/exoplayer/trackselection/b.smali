.class public final synthetic Landroidx/media3/exoplayer/trackselection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/b;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/b;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/b;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/b;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/b;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->s(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ZILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
