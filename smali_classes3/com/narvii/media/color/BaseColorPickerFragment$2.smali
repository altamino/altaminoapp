.class Lcom/narvii/media/color/BaseColorPickerFragment$2;
.super Ljava/lang/Object;
.source "BaseColorPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/color/BaseColorPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/color/BaseColorPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/color/BaseColorPickerFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 126
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 128
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setColor(I)V

    .line 130
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
