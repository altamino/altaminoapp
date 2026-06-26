.class Landroid/support/rastermill/FrameSequenceDrawable$2;
.super Ljava/lang/Object;
.source "FrameSequenceDrawable.java"

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

    .line 180
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 185
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v1

    if-gez v1, :cond_1

    .line 190
    monitor-exit v0

    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v0, v1, -0x2

    .line 196
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 200
    :try_start_1
    iget-object v8, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v8}, Landroid/support/rastermill/FrameSequenceDrawable;->access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v0}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception during decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameSequence"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x14

    cmp-long v8, v5, v1

    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v5

    .line 213
    :goto_1
    iget-object v5, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v5}, Landroid/support/rastermill/FrameSequenceDrawable;->access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 214
    :try_start_2
    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v6}, Landroid/support/rastermill/FrameSequenceDrawable;->access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 215
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1, v8}, Landroid/support/rastermill/FrameSequenceDrawable;->access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v8, v0

    goto :goto_3

    .line 217
    :cond_3
    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v6}, Landroid/support/rastermill/FrameSequenceDrawable;->access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v6

    if-ltz v6, :cond_5

    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v6}, Landroid/support/rastermill/FrameSequenceDrawable;->access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 219
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v6

    add-long/2addr v1, v6

    move-wide v0, v1

    :goto_2
    invoke-static {v4, v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J

    .line 220
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I

    const/4 v7, 0x1

    .line 222
    :cond_5
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    .line 224
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->access$800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    if-eqz v8, :cond_7

    .line 229
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$2;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->access$900(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 222
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 194
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
