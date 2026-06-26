.class Lcom/narvii/account/AgeGatingFragment$2$1;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/AgeGatingFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment$2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$2$1;->this$1:Lcom/narvii/account/AgeGatingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 118
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 119
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object p2, p0, Lcom/narvii/account/AgeGatingFragment$2$1;->this$1:Lcom/narvii/account/AgeGatingFragment$2;

    iget-object p2, p2, Lcom/narvii/account/AgeGatingFragment$2;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    .line 121
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$2$1;->this$1:Lcom/narvii/account/AgeGatingFragment$2;

    iget-object p1, p1, Lcom/narvii/account/AgeGatingFragment$2;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AgeGatingFragment;->updateDate()V

    return-void
.end method
