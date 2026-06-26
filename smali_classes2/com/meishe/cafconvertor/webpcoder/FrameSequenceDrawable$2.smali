.class Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v1}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)I

    move-result v1

    if-gez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v2}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;I)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v0, v1, -0x2

    iget-object v3, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v3}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->e(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    const-wide/16 v5, 0x14

    cmp-long v0, v2, v5

    if-gez v0, :cond_2

    const-wide/16 v2, 0x64

    :cond_2
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v5}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v6}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->b(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v4}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v6, v7}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v7, v4

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v6}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->c(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)I

    move-result v6

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v6}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->f(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)I

    move-result v6

    if-ne v6, v4, :cond_4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    iget-object v6, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v6}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->g(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {v4, v8, v9}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;J)J

    iget-object v4, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->a(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;I)I

    :cond_4
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->h(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;

    move-result-object v0

    iget-object v4, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v4}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->d(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$OnCallback;->callback(ILandroid/graphics/Bitmap;J)V

    :cond_5
    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->i(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)J

    move-result-wide v1

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$2;->a:Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;->j(Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable;)Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/meishe/cafconvertor/webpcoder/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
