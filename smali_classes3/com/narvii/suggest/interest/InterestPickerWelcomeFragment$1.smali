.class Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "InterestPickerWelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerWelcomeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
