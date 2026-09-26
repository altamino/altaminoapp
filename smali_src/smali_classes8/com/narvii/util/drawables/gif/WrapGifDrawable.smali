.class public Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.super Lcom/narvii/util/drawables/WrapDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/drawables/WrapDrawable<",
        "Lcom/narvii/util/drawables/gif/NVGifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/WrapDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method


# virtual methods
.method public draw()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected setupDistCallback()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 3
    move-object v1, v0

    .line 4
    .line 5
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    .line 9
    instance-of v1, v1, Lcom/narvii/util/drawables/DistCallback;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/drawables/DistCallback;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/narvii/util/drawables/DistCallback;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lcom/narvii/util/drawables/DistCallback;-><init>()V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 35
    .line 36
    iput-object v0, v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, p0}, Lcom/narvii/util/drawables/DistCallback;->add(Lcom/narvii/util/drawables/WrapDrawable;)V

    .line 40
    return-void
.end method
