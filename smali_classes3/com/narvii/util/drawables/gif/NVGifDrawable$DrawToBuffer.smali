.class Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;
.super Ljava/lang/Object;
.source "NVGifDrawable.java"

# interfaces
.implements Lpl/droidsonroids/gif/transforms/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/NVGifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawToBuffer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/drawables/gif/NVGifDrawable;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;->this$0:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;->this$0:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iput-object p3, p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->buffer:Landroid/graphics/Bitmap;

    return-void
.end method
