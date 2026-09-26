.class Lcom/narvii/media/color/BaseColorPickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 7
    .line 8
    const/high16 p2, 0x33000000

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    .line 27
    move-result p2

    .line 28
    .line 29
    const/high16 v0, 0x40c00000    # 6.0f

    .line 30
    mul-float/2addr p2, v0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const/high16 v1, 0x41800000    # 16.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v0

    .line 43
    add-float/2addr p2, v0

    .line 44
    float-to-int p2, p2

    .line 45
    .line 46
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->n(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->p(Lcom/narvii/media/color/BaseColorPickerFragment;I)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 61
    const/4 p2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object p1

    .line 73
    const/4 p2, -0x2

    .line 74
    .line 75
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$1;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 92
    :goto_0
    return-void
.end method
