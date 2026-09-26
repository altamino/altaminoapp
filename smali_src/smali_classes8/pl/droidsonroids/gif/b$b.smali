.class Lpl/droidsonroids/gif/b$b;
.super Lpl/droidsonroids/gif/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/b;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/b;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/b;Lpl/droidsonroids/gif/b;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/b$b;->this$0:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    iput p3, p0, Lpl/droidsonroids/gif/b$b;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/b;)V

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b$b;->this$0:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    iget-object v1, v0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    .line 6
    iget v2, p0, Lpl/droidsonroids/gif/b$b;->val$position:I

    .line 7
    .line 8
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->u(ILandroid/graphics/Bitmap;)V

    .line 12
    .line 13
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 14
    .line 15
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 16
    const/4 v1, -0x1

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 22
    return-void
.end method
