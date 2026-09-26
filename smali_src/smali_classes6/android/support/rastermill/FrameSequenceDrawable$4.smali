.class Landroid/support/rastermill/FrameSequenceDrawable$4;
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
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

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
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->l(Landroid/support/rastermill/FrameSequenceDrawable;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->i(Landroid/support/rastermill/FrameSequenceDrawable;)I

    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v1

    .line 17
    .line 18
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->e(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 26
    move-result v1

    .line 27
    rem-int/2addr v2, v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->n(Landroid/support/rastermill/FrameSequenceDrawable;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->r()Ljava/util/concurrent/ExecutorService;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->c(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Runnable;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    :cond_0
    return-void
.end method
