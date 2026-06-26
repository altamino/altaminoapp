.class final Lcom/narvii/pip/PipEditorFragment$showEditView$1;
.super Ljava/lang/Object;
.source "PipEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pipInfoPack:Lcom/narvii/pip/PipInfoPack;

.field final synthetic this$0:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    iput-object p2, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 193
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;-><init>(Lcom/narvii/pip/PipEditorFragment$showEditView$1;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 196
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 197
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    iget-object v0, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->access$calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    .line 199
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    iget-object v1, v1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->access$calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->$pipInfoPack:Lcom/narvii/pip/PipInfoPack;

    iget v0, v0, Lcom/narvii/pip/PipInfoPack;->volume:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/pip/PipEditorFragment;->onPipVideoMute(Z)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$updateAddPipVideoBtn(Lcom/narvii/pip/PipEditorFragment;)V

    return-void
.end method
