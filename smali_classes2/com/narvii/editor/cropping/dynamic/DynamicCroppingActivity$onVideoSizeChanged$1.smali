.class final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;
.super Ljava/lang/Object;
.source "DynamicCroppingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onVideoSizeChanged(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $params:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getEditorView$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->$params:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$setLastLeftRatio$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;F)V

    .line 261
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getEditorView$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/SimpleEditorView;->getInnerRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$setLastVideoEditorLeft$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;F)V

    .line 262
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onVideoSizeChanged$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$addCurrentFramePos(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;ZZ)V

    return-void
.end method
