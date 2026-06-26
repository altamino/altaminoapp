.class Lcom/narvii/item/property/ItemPropertyEditPanel$2;
.super Ljava/lang/Object;
.source "ItemPropertyEditPanel.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/property/ItemPropertyEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;


# direct methods
.method constructor <init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel$2;->this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3

    .line 170
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel$2;->this$0:Lcom/narvii/item/property/ItemPropertyEditPanel;

    invoke-static {p1}, Lcom/narvii/item/property/ItemPropertyEditPanel;->access$000(Lcom/narvii/item/property/ItemPropertyEditPanel;)Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 175
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 176
    invoke-virtual {v0, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 177
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/item/property/ItemPropertyEditor;->setDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
