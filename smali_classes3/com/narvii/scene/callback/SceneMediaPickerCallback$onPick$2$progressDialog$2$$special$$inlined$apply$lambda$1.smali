.class final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SceneMediaPickerCallback.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;

    iget-object p1, p1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    iget-object p1, p1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->cancel()V

    return-void
.end method
