.class Lcom/narvii/master/MasterActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MasterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterActivity;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    iput-boolean p2, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 281
    invoke-virtual {p1}, Lcom/narvii/master/MasterActivity;->updateBlockingProgressDialog()V

    goto :goto_1

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    iget-boolean v0, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 285
    invoke-virtual {p1}, Lcom/narvii/master/MasterActivity;->updateBlockingProgressDialog()V

    .line 287
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    const v2, 0x7f0f0044

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 292
    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {v1, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    :goto_1
    return-void
.end method
