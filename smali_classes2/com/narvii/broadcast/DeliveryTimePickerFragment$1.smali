.class Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;
.super Ljava/lang/Object;
.source "DeliveryTimePickerFragment.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/broadcast/DeliveryTimePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 6

    .line 85
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-static {p1}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->access$000(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)Ljava/util/Calendar;

    move-result-object v0

    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    iget-object p1, p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    iget-object p1, p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    iget-object p1, p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 86
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-static {p1}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->access$000(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    .line 87
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$1;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-static {p1}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->access$100(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)V

    return-void
.end method
