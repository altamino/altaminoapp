.class Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettingsBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/settings/AccountSettingsBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/AccountSettingsBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/AccountSettingsBaseFragment;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;->this$0:Lcom/narvii/account/settings/AccountSettingsBaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/narvii/account/settings/AccountSettingsBaseFragment$1;->this$0:Lcom/narvii/account/settings/AccountSettingsBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/account/settings/AccountSettingsBaseFragment;->updateViews()V

    :cond_0
    return-void
.end method
