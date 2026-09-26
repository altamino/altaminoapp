.class Lcom/narvii/user/profile/UserProfileFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 8
    .line 9
    const-string v0, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-class p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "user"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "moodSticker"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment$8;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$8;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f120cb6

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 90
    .line 91
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$8$1;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$8$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$8;)V

    .line 95
    .line 96
    .line 97
    const v1, 0x104000a

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    .line 102
    const/high16 v0, 0x1040000

    .line 103
    .line 104
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    :goto_0
    return-void
.end method
