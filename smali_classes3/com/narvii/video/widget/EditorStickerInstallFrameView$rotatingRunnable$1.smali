.class final Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;
.super Ljava/lang/Object;
.source "EditorStickerInstallFrameView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/EditorStickerInstallFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;->this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;->this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-static {v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->access$getStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->access$setStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;F)V

    .line 50
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;->this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-static {v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->access$getStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;->this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->access$setStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;F)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;->this$0:Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
