.class final Lcom/narvii/scene/dialog/SceneMediaPickerDialog$onClick$1;
.super Ljava/lang/Object;
.source "SceneMediaPickerDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$onClick$1;->this$0:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$onClick$1;->this$0:Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    invoke-virtual {v0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getOnPickerListener()Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickVideoTemplate()V

    :cond_0
    return-void
.end method
