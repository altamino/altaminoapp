.class final Lcom/narvii/util/MoodHelper$1;
.super Ljava/lang/Object;
.source "MoodHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ActionSheetDialog;Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    iput-object p2, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    iput-object p3, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    iput-object p4, p0, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 49
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 50
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    const-class p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    iget-object v1, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "moodSticker"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0bb0

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 58
    new-instance v1, Lcom/narvii/util/MoodHelper$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/MoodHelper$1$1;-><init>(Lcom/narvii/util/MoodHelper$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 66
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
