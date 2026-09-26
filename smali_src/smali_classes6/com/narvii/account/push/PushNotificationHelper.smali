.class public final Lcom/narvii/account/push/PushNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/push/PushNotificationHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/push/PushNotificationHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_KEY_SUFFIX:Ljava/lang/String; = "_push_notification_remind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENARIO_CHAT:Ljava/lang/String; = "scenario_chat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENARIO_COMMENT:Ljava/lang/String; = "scenario_comment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENARIO_CREATE_POST:Ljava/lang/String; = "scenario_create_post"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENARIO_SUBSCRIBE_TOPIC:Ljava/lang/String; = "scenario_subscribe_topic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENARIO_SUBSCRIBE_USER:Ljava/lang/String; = "scenario_subscribe_user"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/push/PushNotificationHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/push/PushNotificationHelper;->Companion:Lcom/narvii/account/push/PushNotificationHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "prefs"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Landroid/content/SharedPreferences;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 37
    .line 38
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;-><init>(Lcom/narvii/account/push/PushNotificationHelper;)V

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded$lambda$3(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/push/PushNotificationHelper;->showConfirmDialog$lambda$4(Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded$lambda$2$lambda$1(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/account/push/PushNotificationDialog2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded$lambda$2$lambda$0(Lcom/narvii/account/push/PushNotificationDialog2;Landroid/view/View;)V

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

.method private final showConfirmDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120f68

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120f67

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/account/push/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/account/push/d;-><init>(Lcom/narvii/account/push/PushNotificationHelper;)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f1207e0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    return-void
.end method

.method private static final showConfirmDialog$lambda$4(Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/NotificationManagerHelper;->getNotificationSettingIntent()Landroid/content/Intent;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public static synthetic showRemindDialogIfNeeded$default(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const-string p2, ""

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final showRemindDialogIfNeeded$lambda$2$lambda$0(Lcom/narvii/account/push/PushNotificationDialog2;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$this_apply"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string p1, "NoArea"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    return-void
.end method

.method private static final showRemindDialogIfNeeded$lambda$2$lambda$1(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$this_apply"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-string p2, "YesArea"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Lcom/narvii/account/push/PushNotificationHelper;->showConfirmDialog()V

    .line 29
    return-void
.end method

.method private static final showRemindDialogIfNeeded$lambda$3(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$prefsKey"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$dialog"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 29
    .line 30
    iget-object p0, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p0

    .line 35
    const/4 p2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    return-void
.end method


# virtual methods
.method public final checkRemindDialogWhenPostFinished()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 6
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final showRemindDialogIfNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scenario"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scenario"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_push_notification_remind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "chat"

    const-string v4, "alert"

    const-string v5, "scenario_chat"

    const-string v6, "scenario_subscribe_topic"

    const-string v7, "scenario_subscribe_user"

    const-string v8, "scenario_create_post"

    const-string v9, "scenario_comment"

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 5
    invoke-virtual {v1, v4}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationChannelEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v1}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120ddb

    .line 7
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v10, "getString(...)"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, ""

    const/4 v12, 0x1

    sparse-switch v10, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const p2, 0x7f120f62

    .line 9
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 10
    :sswitch_6
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const p2, 0x7f120f63

    .line 11
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 12
    :sswitch_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    new-array v10, v12, [Ljava/lang/Object;

    aput-object p2, v10, v2

    const p2, 0x7f120f66

    .line 13
    invoke-virtual {v1, p2, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 14
    :sswitch_8
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    new-array v10, v12, [Ljava/lang/Object;

    aput-object p2, v10, v2

    const p2, 0x7f1211dc

    .line 15
    invoke-virtual {v1, p2, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 16
    :sswitch_9
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_1
    move-object p2, v11

    goto :goto_2

    :cond_6
    const p2, 0x7f120f64

    .line 17
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    :goto_2
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_3

    :sswitch_a
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const-string v3, "comment"

    goto :goto_4

    :sswitch_b
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "createPost"

    goto :goto_4

    :sswitch_c
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const-string v3, "subscribe"

    goto :goto_4

    :sswitch_d
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const-string v3, "topic"

    goto :goto_4

    :sswitch_e
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_3
    move-object v3, v11

    .line 20
    :cond_b
    :goto_4
    new-instance p1, Lcom/narvii/account/push/PushNotificationDialog2;

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "PushNotificationReminder"

    invoke-direct {p1, v1, v2, v3}, Lcom/narvii/account/push/PushNotificationDialog2;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v4}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 23
    new-instance p2, Lcom/narvii/account/push/a;

    invoke-direct {p2, p1}, Lcom/narvii/account/push/a;-><init>(Lcom/narvii/account/push/PushNotificationDialog2;)V

    const v1, 0x7f120d88

    invoke-virtual {p1, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 24
    new-instance p2, Lcom/narvii/account/push/b;

    invoke-direct {p2, p1, p0}, Lcom/narvii/account/push/b;-><init>(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;)V

    const v1, 0x7f1212a8

    invoke-virtual {p1, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 25
    new-instance p2, Lcom/narvii/account/push/c;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/account/push/c;-><init>(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return v12

    :cond_c
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x46326d59 -> :sswitch_4
        -0x20fbe8b5 -> :sswitch_3
        -0x19d611d1 -> :sswitch_2
        0x1563e7d4 -> :sswitch_1
        0x265678b0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x46326d59 -> :sswitch_9
        -0x20fbe8b5 -> :sswitch_8
        -0x19d611d1 -> :sswitch_7
        0x1563e7d4 -> :sswitch_6
        0x265678b0 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x46326d59 -> :sswitch_e
        -0x20fbe8b5 -> :sswitch_d
        -0x19d611d1 -> :sswitch_c
        0x1563e7d4 -> :sswitch_b
        0x265678b0 -> :sswitch_a
    .end sparse-switch
.end method
