.class Lcom/narvii/account/AgeGatingFragment$2;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AgeGatingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$2;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment$2;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iget-object v0, v0, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/narvii/account/AgeGatingFragment$2;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/narvii/account/AgeGatingFragment$2$1;

    invoke-direct {v3, p0}, Lcom/narvii/account/AgeGatingFragment$2$1;-><init>(Lcom/narvii/account/AgeGatingFragment$2;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 124
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 125
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    const/high16 v1, 0x60000

    invoke-virtual {p1, v1}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 126
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    return-void
.end method
