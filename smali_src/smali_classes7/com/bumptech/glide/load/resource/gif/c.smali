.class public Lcom/bumptech/glide/load/resource/gif/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/g$b;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/c$a;
    }
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77

.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private applyGravity:Z

.field private destRect:Landroid/graphics/Rect;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/load/resource/gif/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/a;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/a;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/gif/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/a;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/a;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/a;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/c$a;

    new-instance v8, Lcom/bumptech/glide/load/resource/gif/g;

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/gif/g;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/gifdecoder/a;IILcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/bumptech/glide/load/resource/gif/c$a;-><init>(Lcom/bumptech/glide/load/resource/gif/g;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/c;-><init>(Lcom/bumptech/glide/load/resource/gif/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/c$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->maxLoopCount:I

    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/c$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method private d()Landroid/graphics/Rect;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->destRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->destRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->destRect:Landroid/graphics/Rect;

    .line 14
    return-object v0
.end method

.method private h()Landroid/graphics/Paint;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->paint:Landroid/graphics/Paint;

    .line 15
    return-object v0
.end method

.method private j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->animationCallbacks:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/c;->animationCallbacks:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->a(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->loopCount:I

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRecycled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->f()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRunning:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRunning:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/g;->r(Lcom/bumptech/glide/load/resource/gif/g$b;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRunning:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/gif/g;->s(Lcom/bumptech/glide/load/resource/gif/g$b;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->b()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->stop()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->g()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->f()I

    .line 24
    move-result v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->loopCount:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->loopCount:I

    .line 35
    .line 36
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->maxLoopCount:I

    .line 37
    const/4 v1, -0x1

    .line 38
    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/c;->loopCount:I

    .line 42
    .line 43
    if-lt v1, v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->j()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->stop()V

    .line 50
    :cond_2
    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->b()Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRecycled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->applyGravity:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->getIntrinsicWidth()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/c;->getIntrinsicHeight()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->d()Landroid/graphics/Rect;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    const/16 v4, 0x77

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->applyGravity:Z

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->c()Landroid/graphics/Bitmap;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->d()Landroid/graphics/Rect;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->h()Landroid/graphics/Paint;

    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->e()Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->f()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->d()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->h()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->k()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->j()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRunning:Z

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRecycled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/g;->a()V

    .line 11
    return-void
.end method

.method public m(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->state:Lcom/bumptech/glide/load/resource/gif/c$a;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/c$a;->frameLoader:Lcom/bumptech/glide/load/resource/gif/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/g;->o(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    .line 8
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->applyGravity:Z

    .line 7
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->h()Landroid/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->h()Landroid/graphics/Paint;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isRecycled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/c;->isVisible:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->o()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isStarted:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->n()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isStarted:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->l()V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isVisible:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->n()V

    .line 14
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/c;->isStarted:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/c;->o()V

    .line 7
    return-void
.end method
