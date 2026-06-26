.class public final Lcom/narvii/account/push/PushNotificationHelper;
.super Ljava/lang/Object;
.source "PushNotificationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/push/PushNotificationHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushNotificationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushNotificationHelper.kt\ncom/narvii/account/push/PushNotificationHelper\n*L\n1#1,119:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/push/PushNotificationHelper$Companion;

.field private static final PREF_KEY_SUFFIX:Ljava/lang/String; = "_push_notification_remind"

.field public static final SCENARIO_CHAT:Ljava/lang/String; = "scenario_chat"

.field public static final SCENARIO_COMMENT:Ljava/lang/String; = "scenario_comment"

.field public static final SCENARIO_CREATE_POST:Ljava/lang/String; = "scenario_create_post"

.field public static final SCENARIO_SUBSCRIBE_TOPIC:Ljava/lang/String; = "scenario_subscribe_topic"

.field public static final SCENARIO_SUBSCRIBE_USER:Ljava/lang/String; = "scenario_subscribe_user"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/push/PushNotificationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/account/push/PushNotificationHelper;->Companion:Lcom/narvii/account/push/PushNotificationHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 29
    iget-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"prefs\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    .line 30
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 32
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;-><init>(Lcom/narvii/account/push/PushNotificationHelper;)V

    iput-object p1, p0, Lcom/narvii/account/push/PushNotificationHelper;->statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    return-void
.end method

.method public static final synthetic access$getNotificationManagerHelper$p(Lcom/narvii/account/push/PushNotificationHelper;)Lcom/narvii/util/NotificationManagerHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/narvii/account/push/PushNotificationHelper;)Landroid/content/SharedPreferences;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$showConfirmDialog(Lcom/narvii/account/push/PushNotificationHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/account/push/PushNotificationHelper;->showConfirmDialog()V

    return-void
.end method

.method private final showConfirmDialog()V
    .locals 3

    .line 108
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0e47

    .line 109
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v1, 0x7f0f0e46

    .line 110
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 111
    new-instance v1, Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/account/push/PushNotificationHelper$showConfirmDialog$1;-><init>(Lcom/narvii/account/push/PushNotificationHelper;)V

    const v2, 0x7f0f0737

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 115
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic showRemindDialogIfNeeded$default(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final checkRemindDialogWhenPostFinished()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->statusListener:Lcom/narvii/account/push/PushNotificationHelper$statusListener$1;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final showRemindDialogIfNeeded(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "scenario"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "scenario"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "param"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_push_notification_remind"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v4, v0, Lcom/narvii/account/push/PushNotificationHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v6, "chat"

    const-string v7, "alert"

    const-string v8, "scenario_comment"

    const-string v9, "scenario_create_post"

    const-string v10, "scenario_subscribe_user"

    const-string v11, "scenario_subscribe_topic"

    const-string v12, "scenario_chat"

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :sswitch_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v7, v6

    .line 58
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v4, v7}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationChannelEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/narvii/account/push/PushNotificationHelper;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v4}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    iget-object v4, v0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "ctx.context"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f0cbe

    .line 60
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v13, "res.getString(R.string.notification_reminder)"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    const-string v14, ""

    const/4 v15, 0x1

    sparse-switch v13, :sswitch_data_1

    :cond_2
    move-object/from16 v16, v6

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0f0e41

    .line 65
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 61
    :sswitch_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0f0e42

    .line 66
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object/from16 v16, v6

    goto :goto_3

    .line 61
    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x7f0f0e45

    move-object/from16 v16, v6

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 63
    invoke-virtual {v4, v13, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_8
    move-object/from16 v16, v6

    .line 61
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0f10d0

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v2, v13, v5

    .line 64
    invoke-virtual {v4, v6, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_9
    move-object/from16 v16, v6

    .line 61
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0f0e43

    .line 62
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, v14

    :goto_3
    const-string/jumbo v4, "when (scenario) {\n      \u2026 else -> \"\"\n            }"

    .line 61
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v6, "comment"

    goto :goto_5

    :sswitch_b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v6, "createPost"

    goto :goto_5

    :sswitch_c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v6, "subscribe"

    goto :goto_5

    :sswitch_d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v6, "topic"

    goto :goto_5

    :sswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v6, v16

    goto :goto_5

    :cond_4
    :goto_4
    move-object v6, v14

    .line 77
    :goto_5
    new-instance v1, Lcom/narvii/account/push/PushNotificationDialog2;

    iget-object v4, v0, Lcom/narvii/account/push/PushNotificationHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v5, "PushNotificationReminder"

    invoke-direct {v1, v4, v5, v6}, Lcom/narvii/account/push/PushNotificationDialog2;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v7}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v4, 0x7f0f0c5b

    .line 80
    new-instance v5, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$dialog$1$1;

    invoke-direct {v5, v1}, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$dialog$1$1;-><init>(Lcom/narvii/account/push/PushNotificationDialog2;)V

    invoke-virtual {v1, v4, v5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v4, 0x7f0f11a0

    .line 83
    new-instance v5, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;

    invoke-direct {v5, v1, v0, v7, v2}, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$$inlined$apply$lambda$1;-><init>(Lcom/narvii/account/push/PushNotificationDialog2;Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 89
    new-instance v2, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;

    invoke-direct {v2, v0, v3, v1}, Lcom/narvii/account/push/PushNotificationHelper$showRemindDialogIfNeeded$1;-><init>(Lcom/narvii/account/push/PushNotificationHelper;Ljava/lang/String;Lcom/narvii/account/push/PushNotificationDialog2;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return v15

    :cond_5
    return v5

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
