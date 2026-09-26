.class Lcom/narvii/nvplayerview/NVVideoTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/NVVideoTextureView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayerview/NVVideoTextureView;

.field final synthetic val$surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/NVVideoTextureView;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->this$0:Lcom/narvii/nvplayerview/NVVideoTextureView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->val$surface:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->val$surface:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 6
    return-void
.end method
