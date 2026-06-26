.class public Lcom/narvii/util/MoodHelper;
.super Ljava/lang/Object;
.source "MoodHelper.java"


# static fields
.field static final ACTIVATION_REQUEST:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateAccount(Landroid/app/Activity;)V
    .locals 3

    .line 151
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "My User Profile"

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 153
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "account"

    .line 141
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 142
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 143
    invoke-static {p0, v1, p1}, Lcom/narvii/util/MoodHelper;->isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getMoodVisibility(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;Lcom/narvii/model/Sticker;)I
    .locals 1

    const-string v0, "account"

    .line 120
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 121
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    :goto_1
    return p0
.end method

.method public static isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 129
    :cond_0
    iget p0, p0, Lcom/narvii/model/User;->onlineStatus:I

    if-eqz p1, :cond_1

    const-string p0, "account"

    .line 131
    invoke-interface {p2, p0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/account/AccountService;

    .line 132
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result p0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/User;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 37
    new-instance v6, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {v6, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "account"

    .line 38
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 39
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0b052f

    .line 41
    invoke-virtual {v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 42
    invoke-static {p1, v0, p0}, Lcom/narvii/util/MoodHelper;->isOnline(Lcom/narvii/model/User;ZLcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f090721

    .line 44
    invoke-virtual {v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090b5b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0bb3

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0bb2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    invoke-virtual {v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/narvii/util/MoodHelper$1;

    invoke-direct {v3, v6, p0, p1, v2}, Lcom/narvii/util/MoodHelper$1;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0907b9

    .line 72
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v3, 0x7f0f0cf3

    goto :goto_2

    :cond_2
    const v3, 0x7f0f0cef

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    const/4 v3, 0x4

    const v8, 0x7f0907b7

    const v4, 0x7f09020f

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0907b8

    .line 80
    invoke-virtual {v6, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_3
    new-instance v9, Lcom/narvii/util/MoodHelper$2;

    move-object v0, v9

    move-object v1, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/util/MoodHelper$2;-><init>(Lcom/narvii/util/dialog/ActionSheetDialog;Landroid/content/Context;Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;Lcom/narvii/model/User;)V

    .line 114
    invoke-virtual {v6, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v6, v8}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
