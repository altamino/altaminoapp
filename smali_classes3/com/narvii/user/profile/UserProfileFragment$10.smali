.class Lcom/narvii/user/profile/UserProfileFragment$10;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 939
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 940
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 941
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p1, :cond_0

    .line 942
    const-class p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 943
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "moodSticker"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 947
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$10;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0bb0

    .line 948
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 949
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$10$1;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$10$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$10;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 955
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 956
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
