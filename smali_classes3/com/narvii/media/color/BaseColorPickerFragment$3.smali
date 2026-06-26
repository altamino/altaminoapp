.class Lcom/narvii/media/color/BaseColorPickerFragment$3;
.super Ljava/lang/Object;
.source "BaseColorPickerFragment.java"

# interfaces
.implements Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;


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

    .line 137
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 141
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-static {v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$000(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$002(Lcom/narvii/media/color/BaseColorPickerFragment;I)I

    .line 145
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$000(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->onColorChanged(I)V

    .line 146
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$000(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->access$100(Lcom/narvii/media/color/BaseColorPickerFragment;I)V

    return-void
.end method
