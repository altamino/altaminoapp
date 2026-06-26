.class Lcom/narvii/media/color/BaseColorPickerFragment$4;
.super Ljava/lang/Object;
.source "BaseColorPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 151
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$4;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$4;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/color/BaseColorPickerFragment;->colorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method
