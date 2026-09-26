.class Lcom/narvii/util/MoodHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$dlg:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v0, "account"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

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
    const-class p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "user"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$user:Lcom/narvii/model/User;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "moodSticker"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$ctx:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/narvii/util/MoodHelper$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f120cb6

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/util/MoodHelper$1$1;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/narvii/util/MoodHelper$1$1;-><init>(Lcom/narvii/util/MoodHelper$1;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x104000a

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    .line 88
    const/high16 v0, 0x1040000

    .line 89
    .line 90
    sget-object v1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 97
    :goto_0
    return-void
.end method
