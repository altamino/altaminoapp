.class Lcom/narvii/prefs/AccountSettingFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment;->logout()V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/prefs/AccountSettingFragment$3;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/prefs/AccountSettingFragment$3;->lambda$onClick$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f120048

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/prefs/AccountSettingFragment;->resetApp()V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 5
    .line 6
    const-string p2, "statistics"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 13
    .line 14
    const-string p2, "Log Out"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/prefs/a;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/narvii/prefs/a;-><init>(Lcom/narvii/prefs/AccountSettingFragment$3;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 33
    :cond_0
    return-void
.end method
