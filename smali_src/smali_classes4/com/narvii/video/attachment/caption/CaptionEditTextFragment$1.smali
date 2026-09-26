.class Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "text"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 37
    .line 38
    iget v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->color:I

    .line 39
    .line 40
    const-string v1, "color"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 46
    .line 47
    const-string v1, "isNew"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->editText:Landroid/widget/EditText;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    .line 64
    const/4 v1, -0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$1;->val$activity:Lcom/narvii/app/NVActivity;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 73
    return-void
.end method
