.class Lcom/narvii/prefs/AccountSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AccountSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$1;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$1;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    iget-object p1, p1, Lcom/narvii/prefs/AccountSettingFragment;->adapter:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
