.class Lcom/narvii/suggest/interest/InterestPickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "InterestPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
