.class Landroid/support/rastermill/FrameSequenceDrawable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->h(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->n(Landroid/support/rastermill/FrameSequenceDrawable;I)V

    .line 14
    .line 15
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->p(Landroid/support/rastermill/FrameSequenceDrawable;I)V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->k(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->k(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;->onFinished(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method
