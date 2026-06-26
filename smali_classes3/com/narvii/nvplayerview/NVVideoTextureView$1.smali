.class Lcom/narvii/nvplayerview/NVVideoTextureView$1;
.super Ljava/lang/Object;
.source "NVVideoTextureView.java"

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

    .line 51
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->this$0:Lcom/narvii/nvplayerview/NVVideoTextureView;

    iput-object p2, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->val$surface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;->val$surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method
