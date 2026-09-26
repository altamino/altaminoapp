.class Lcom/narvii/media/color/BaseColorPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x6

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setColor(I)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$2;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 38
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
