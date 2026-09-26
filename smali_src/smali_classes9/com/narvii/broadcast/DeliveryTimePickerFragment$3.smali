.class Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->o(Lcom/narvii/broadcast/DeliveryTimePickerFragment;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/broadcast/DeliveryTimePickerFragment;->date:Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    div-long/2addr v0, v2

    .line 35
    long-to-int v0, v0

    .line 36
    .line 37
    :goto_0
    const-string v1, "time"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, -0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/broadcast/DeliveryTimePickerFragment$3;->this$0:Lcom/narvii/broadcast/DeliveryTimePickerFragment;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 60
    :cond_1
    return-void
.end method
