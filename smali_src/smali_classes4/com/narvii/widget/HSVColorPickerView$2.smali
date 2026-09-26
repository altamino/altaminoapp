.class Lcom/narvii/widget/HSVColorPickerView$2;
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
    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView$2;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/widget/HSVColorPickerView$2;->this$0:Lcom/narvii/widget/HSVColorPickerView;

    .line 3
    int-to-float p2, p2

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    mul-float/2addr p2, v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    div-float/2addr p2, p1

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p2}, Lcom/narvii/widget/HSVColorPickerView;->b(Lcom/narvii/widget/HSVColorPickerView;F)V

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
