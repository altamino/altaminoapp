.class Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;
.super Ljava/lang/Object;
.source "NVGifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

.field final synthetic val$lg:Lpl/droidsonroids/gif/LGifDrawable;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;Lpl/droidsonroids/gif/LGifDrawable;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;->this$0:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    iput-object p2, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;->val$lg:Lpl/droidsonroids/gif/LGifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;->val$lg:Lpl/droidsonroids/gif/LGifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    return-void
.end method
