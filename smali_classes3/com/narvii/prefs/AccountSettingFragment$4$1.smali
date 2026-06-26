.class Lcom/narvii/prefs/AccountSettingFragment$4$1;
.super Ljava/lang/Object;
.source "AccountSettingFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prefs/AccountSettingFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment$4;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$4$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$4$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$4;

    iget-object p1, p1, Lcom/narvii/prefs/AccountSettingFragment$4;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$4$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$4;

    iget-object v0, v0, Lcom/narvii/prefs/AccountSettingFragment$4;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    const v1, 0x7f0f0047

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$4$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$4;

    iget-object p1, p1, Lcom/narvii/prefs/AccountSettingFragment$4;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/AccountSettingFragment;->resetApp()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 227
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/AccountSettingFragment$4$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
