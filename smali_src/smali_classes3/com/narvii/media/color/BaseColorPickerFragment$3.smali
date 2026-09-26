.class Lcom/narvii/media/color/BaseColorPickerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x1000000

    .line 3
    or-int/2addr p1, v0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->n(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->o(Lcom/narvii/media/color/BaseColorPickerFragment;I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->n(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->onColorChanged(I)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/media/color/BaseColorPickerFragment$3;->this$0:Lcom/narvii/media/color/BaseColorPickerFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->n(Lcom/narvii/media/color/BaseColorPickerFragment;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/narvii/media/color/BaseColorPickerFragment;->p(Lcom/narvii/media/color/BaseColorPickerFragment;I)V

    .line 36
    return-void
.end method
