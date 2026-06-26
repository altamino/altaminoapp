.class Lcom/narvii/prefs/AccountSettingFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment;->deleteAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;Landroid/content/Intent;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    iput-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/AccountSettingFragment$2;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->val$intent:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
