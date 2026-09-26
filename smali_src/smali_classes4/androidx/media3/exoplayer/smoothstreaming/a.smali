.class public final synthetic Landroidx/media3/exoplayer/smoothstreaming/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/a;->a:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/a;->a:Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->k0(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V

    return-void
.end method
