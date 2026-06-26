.class public Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
.super Lcom/narvii/util/drawables/WrapDrawable;
.source "WrapWebPDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/drawables/WrapDrawable<",
        "Lcom/narvii/util/drawables/webp/NVWebPDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/WrapDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw()Landroid/graphics/Bitmap;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected setupDistCallback()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    iget-object v1, v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    instance-of v1, v1, Lcom/narvii/util/drawables/DistCallback;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    iget-object v0, v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    check-cast v0, Lcom/narvii/util/drawables/DistCallback;

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/narvii/util/drawables/DistCallback;

    invoke-direct {v0}, Lcom/narvii/util/drawables/DistCallback;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    iget-object v1, p0, Lcom/narvii/util/drawables/WrapDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    iput-object v0, v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 28
    :goto_0
    invoke-virtual {v0, p0}, Lcom/narvii/util/drawables/DistCallback;->add(Lcom/narvii/util/drawables/WrapDrawable;)V

    return-void
.end method
