.class Lcom/narvii/widget/HSVColorPickerView$1;
.super Ljava/lang/Object;
.source "HSVColorPickerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/HSVColorPickerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/HSVColorPickerView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/HSVColorPickerView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$1;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    int-to-float p2, p2

    const/high16 p3, 0x43b40000    # 360.0f

    mul-float p2, p2, p3

    .line 68
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 69
    iget-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$1;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    invoke-static {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->access$100(Lcom/narvii/widget/HSVColorPickerView;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
