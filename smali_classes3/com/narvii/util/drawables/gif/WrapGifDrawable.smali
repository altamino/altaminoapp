.class public Lcom/narvii/util/drawables/gif/WrapGifDrawable;
.super Lcom/narvii/util/drawables/WrapDrawable;
.source "WrapGifDrawable.java"


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

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/WrapDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw()Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected setupDistCallback()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v1, v1, Lcom/narvii/util/drawables/DistCallback;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Lcom/narvii/util/drawables/DistCallback;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/narvii/util/drawables/DistCallback;

    invoke-direct {v0}, Lcom/narvii/util/drawables/DistCallback;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 38
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iput-object v0, v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 40
    :goto_0
    invoke-virtual {v0, p0}, Lcom/narvii/util/drawables/DistCallback;->add(Lcom/narvii/util/drawables/WrapDrawable;)V

    return-void
.end method
