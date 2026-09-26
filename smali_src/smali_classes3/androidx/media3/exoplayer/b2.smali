.class public final synthetic Landroidx/media3/exoplayer/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/b2;->b:Landroid/util/Pair;

    iput p3, p0, Landroidx/media3/exoplayer/b2;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->a:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->b:Landroid/util/Pair;

    iget v2, p0, Landroidx/media3/exoplayer/b2;->c:I

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->y(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    return-void
.end method
