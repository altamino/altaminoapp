.class Lcom/narvii/widget/HSVColorPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$1;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    int-to-float p2, p2

    .line 2
    .line 3
    const/high16 p3, 0x43b40000    # 360.0f

    .line 4
    mul-float/2addr p2, p3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    div-float/2addr p2, p1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$1;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/widget/HSVColorPickerView;->a(Lcom/narvii/widget/HSVColorPickerView;F)V

    .line 16
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
