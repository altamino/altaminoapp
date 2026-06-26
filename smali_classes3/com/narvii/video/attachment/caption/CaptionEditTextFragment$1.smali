.class Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;
.super Ljava/lang/Object;
.source "CaptionEditTextFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

.field final synthetic val$activity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    const-string v1, "isNew"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 78
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
