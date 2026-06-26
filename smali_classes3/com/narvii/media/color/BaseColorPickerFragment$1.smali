.class Lcom/narvii/media/color/BaseColorPickerFragment$1;
.super Ljava/lang/Object;
.source "BaseColorPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 100
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    const/high16 p2, 0x33000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 105
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p2, p2, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$000(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$100(Lcom/narvii/media/color/BaseColorPickerFragment;I)V

    .line 108
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 109
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    .line 111
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
