.class Lcom/github/mmin18/widget/RealtimeBlurView$1;
.super Ljava/lang/Object;
.source "RealtimeBlurView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final invalidateDelayed:Ljava/lang/Runnable;

.field invalidateScheduled:Z

.field final locations:[I

.field prevBlurTimestamp:J

.field prevCoord:J

.field final synthetic this$0:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 259
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->locations:[I

    .line 331
    new-instance p1, Lcom/github/mmin18/widget/RealtimeBlurView$1$1;

    invoke-direct {p1, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$1$1;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView$1;)V

    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateDelayed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .line 263
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$100(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$200(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$100(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 265
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->locations:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->locations:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    neg-int v5, v5

    .line 271
    aget v6, v3, v2

    neg-int v6, v6

    .line 273
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 274
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->locations:[I

    aget v7, v3, v4

    add-int/2addr v5, v7

    .line 275
    aget v3, v3, v2

    add-int/2addr v6, v3

    .line 277
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-long v7, v3

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    .line 278
    iget-object v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-long v9, v9

    or-long/2addr v7, v9

    shl-long/2addr v7, v3

    int-to-long v9, v5

    or-long/2addr v7, v9

    shl-long/2addr v7, v3

    int-to-long v9, v6

    or-long/2addr v7, v9

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 282
    iget-wide v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->prevCoord:J

    cmp-long v3, v7, v11

    if-nez v3, :cond_3

    iget-wide v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->prevBlurTimestamp:J

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)J

    move-result-wide v13

    add-long/2addr v11, v13

    cmp-long v3, v9, v11

    if-gez v3, :cond_3

    .line 283
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateScheduled:Z

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateDelayed:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->prevBlurTimestamp:J

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$300(Lcom/github/mmin18/widget/RealtimeBlurView;)J

    move-result-wide v5

    add-long/2addr v3, v5

    sub-long/2addr v3, v9

    const-wide/16 v5, 0x43

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateScheduled:Z

    :cond_2
    return v2

    .line 290
    :cond_3
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->prepare()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$500(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$400(Lcom/github/mmin18/widget/RealtimeBlurView;)I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 297
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 298
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v11, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$702(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 299
    sget v11, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/2addr v11, v2

    sput v11, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 301
    :try_start_0
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v11

    iget-object v12, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v12}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$500(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v12, v12, v13

    iget-object v14, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    iget-object v14, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v14}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$500(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v13

    iget-object v13, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 302
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v11

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v6}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    :cond_5
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v6}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->render(Landroid/graphics/Canvas;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/github/mmin18/widget/RealtimeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 309
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$702(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 310
    sget v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 311
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 312
    throw v0

    .line 309
    :catch_0
    :goto_2
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$702(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 310
    sget v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    sub-int/2addr v1, v2

    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 311
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$600(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 314
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$500(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$000(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->reportPreDraw(Landroid/content/Context;)V

    .line 316
    iput-wide v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->prevBlurTimestamp:J

    .line 317
    iput-wide v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->prevCoord:J

    .line 318
    iget-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateScheduled:Z

    if-eqz v1, :cond_6

    .line 319
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateDelayed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iput-boolean v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateScheduled:Z

    :cond_6
    if-nez v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->access$800(Lcom/github/mmin18/widget/RealtimeBlurView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    :cond_7
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_3
    return v2
.end method
