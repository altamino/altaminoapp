.class Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;
.super Ljava/lang/Object;
.source "DeliveryTimePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 114
    iput-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 117
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-static {v0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->access$200(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    iget-object v0, v0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
