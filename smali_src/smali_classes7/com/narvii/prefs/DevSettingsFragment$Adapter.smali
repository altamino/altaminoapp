.class final Lcom/narvii/prefs/DevSettingsFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/DevSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevSettingsFragment.kt\ncom/narvii/prefs/DevSettingsFragment$Adapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1#2:178\n1855#3,2:179\n1855#3,2:181\n*S KotlinDebug\n*F\n+ 1 DevSettingsFragment.kt\ncom/narvii/prefs/DevSettingsFragment$Adapter\n*L\n125#1:179,2\n129#1:181,2\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/prefs/DevSettingsFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    return-void
.end method

.method public static final synthetic access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->finishUpdateOption()V

    .line 4
    return-void
.end method

.method private final addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/prefs/model/DevOption;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Lcom/narvii/prefs/model/DevOption;->type:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, -0x44a8e1b9

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    .line 16
    const v2, -0x33c144ac    # -4.9999184E7f

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    .line 21
    const v2, -0xa3259f1

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string v1, "multiple-selection"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-string v1, "toggle"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 44
    .line 45
    iget-object v1, p2, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/prefs/i;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v1, p1, p2, p0}, Lcom/narvii/prefs/i;-><init>(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    .line 56
    .line 57
    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 58
    .line 59
    const-string p1, "true"

    .line 60
    .line 61
    iget-object p2, p2, Lcom/narvii/prefs/model/DevOption;->value:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    iput-boolean p1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    const-string v1, "single-selection"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 83
    .line 84
    iget-object v1, p2, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 90
    .line 91
    new-instance v2, Lcom/narvii/prefs/j;

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v1, p1, p2}, Lcom/narvii/prefs/j;-><init>(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;)V

    .line 95
    .line 96
    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 97
    .line 98
    .line 99
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_4
    :goto_0
    return-void
.end method

.method private static final addPrefsToList$lambda$7(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$group"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$option"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "this$1"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "progressDialog"

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 33
    move-object v0, v2

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 50
    move-object v0, v2

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "/device/dev-options"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const-string v1, "group"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    const-string v0, "name"

    .line 76
    .line 77
    iget-object p2, p2, Lcom/narvii/prefs/model/DevOption;->name:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iget-boolean p2, p4, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    const-string p2, "true"

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_3
    const-string p2, "false"

    .line 91
    .line 92
    :goto_0
    const-string p4, "value"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p4, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getApi$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/http/ApiService;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    const-string p2, "api"

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move-object v2, p2

    .line 114
    .line 115
    :goto_1
    new-instance p2, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;

    .line 116
    .line 117
    const-class p4, Lcom/narvii/pushservice/DeviceResponse;

    .line 118
    .line 119
    .line 120
    invoke-direct {p2, p0, p3, p4}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;-><init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 124
    return-void
.end method

.method private static final addPrefsToList$lambda$8(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 1

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$group"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "$option"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    const-string p3, "progressDialog"

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    const/4 p3, 0x0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p3}, Landroid/app/Dialog;->isShowing()Z

    .line 31
    move-result p3

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    const-class p3, Lcom/narvii/prefs/DevSelectionFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    const-string v0, "group"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    const-string p1, "option"

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    iget-object p1, p2, Lcom/narvii/prefs/model/DevOption;->type:Ljava/lang/String;

    .line 57
    .line 58
    const-string p2, "single-selection"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    .line 64
    const-string p2, "singleSelection"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const p1, 0xfd31

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p3, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 74
    return-void
.end method

.method private static final buildCells$lambda$1(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V
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
    .line 8
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "sharedPreferences"

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 24
    .line 25
    const-string v1, "VideoDebug"

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    iget-boolean p0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 35
    .line 36
    sput-boolean p0, Lcom/narvii/nvplayerview/NVVideoView;->videoDebugEnable:Z

    .line 37
    return-void
.end method

.method private static final buildCells$lambda$2(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V
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
    .line 8
    invoke-static {p0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "sharedPreferences"

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-boolean v0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 24
    .line 25
    const-string v1, "VideoStrategyInfo"

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    iget-boolean p0, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 35
    .line 36
    sput-boolean p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    .line 37
    return-void
.end method

.method public static synthetic f(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList$lambda$7(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method

.method private final finishUpdateOption()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "progressDialog"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method

.method public static synthetic g(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList$lambda$8(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->buildCells$lambda$2(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->buildCells$lambda$1(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "account"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object v0, v1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDevOptions()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-class v2, Lcom/narvii/prefs/model/DevOptions;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/prefs/model/DevOptions;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/list/prefs/PrefsSection;

    .line 35
    .line 36
    .line 37
    const v3, 0x7f1202b9

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    iput-boolean v3, v2, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    new-instance v2, Lcom/narvii/list/prefs/PrefsEntry;

    .line 49
    .line 50
    const-string v4, "Diagnosis"

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    const-class v4, Lcom/narvii/util/diagnosis/DiagnosisFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    iput-object v4, v2, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/list/prefs/PrefsEntry;

    .line 67
    .line 68
    const-string v4, "Toggle Options"

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    const-class v4, Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    iput-object v4, v2, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    new-instance v2, Lcom/narvii/list/prefs/PrefsToggle;

    .line 85
    .line 86
    const-string v4, "Video Debug"

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v4}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    iget-object v4, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    const-string v5, "sharedPreferences"

    .line 98
    .line 99
    if-nez v4, :cond_1

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 103
    move-object v4, v1

    .line 104
    .line 105
    :cond_1
    const-string v6, "VideoDebug"

    .line 106
    .line 107
    .line 108
    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 109
    move-result v4

    .line 110
    .line 111
    iput-boolean v4, v2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 112
    .line 113
    iget-object v4, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 114
    .line 115
    new-instance v6, Lcom/narvii/prefs/g;

    .line 116
    .line 117
    .line 118
    invoke-direct {v6, v4}, Lcom/narvii/prefs/g;-><init>(Lcom/narvii/prefs/DevSettingsFragment;)V

    .line 119
    .line 120
    iput-object v6, v2, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    new-instance v2, Lcom/narvii/list/prefs/PrefsEntry;

    .line 126
    .line 127
    const-string v4, "Video Resolution"

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    const-class v4, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    iput-object v4, v2, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    new-instance v2, Lcom/narvii/list/prefs/PrefsToggle;

    .line 144
    .line 145
    const-string v4, "Strategy Debug Info"

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, v4}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    iget-object v4, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 151
    .line 152
    .line 153
    invoke-static {v4}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    if-nez v4, :cond_2

    .line 157
    .line 158
    .line 159
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    move-object v1, v4

    .line 162
    .line 163
    :goto_0
    const-string v4, "VideoStrategyInfo"

    .line 164
    .line 165
    .line 166
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    move-result v1

    .line 168
    .line 169
    iput-boolean v1, v2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 170
    .line 171
    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 172
    .line 173
    new-instance v4, Lcom/narvii/prefs/h;

    .line 174
    .line 175
    .line 176
    invoke-direct {v4, v1}, Lcom/narvii/prefs/h;-><init>(Lcom/narvii/prefs/DevSettingsFragment;)V

    .line 177
    .line 178
    iput-object v4, v2, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    .line 185
    iget-object v1, v0, Lcom/narvii/prefs/model/DevOptions;->client:Ljava/util/List;

    .line 186
    .line 187
    if-eqz v1, :cond_3

    .line 188
    .line 189
    check-cast v1, Ljava/lang/Iterable;

    .line 190
    .line 191
    .line 192
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v2

    .line 198
    .line 199
    if-eqz v2, :cond_3

    .line 200
    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    check-cast v2, Lcom/narvii/prefs/model/DevOption;

    .line 206
    .line 207
    .line 208
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 209
    .line 210
    const-string v4, "client"

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, v4, v2, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V

    .line 214
    goto :goto_1

    .line 215
    .line 216
    :cond_3
    if-eqz v0, :cond_4

    .line 217
    .line 218
    iget-object v0, v0, Lcom/narvii/prefs/model/DevOptions;->server:Ljava/util/List;

    .line 219
    .line 220
    if-eqz v0, :cond_4

    .line 221
    .line 222
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    .line 223
    .line 224
    .line 225
    const v2, 0x7f121090

    .line 226
    .line 227
    .line 228
    invoke-direct {v1, v2}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    .line 229
    .line 230
    iput-boolean v3, v1, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    check-cast v0, Ljava/lang/Iterable;

    .line 236
    .line 237
    .line 238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    .line 242
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v1

    .line 244
    .line 245
    if-eqz v1, :cond_4

    .line 246
    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    check-cast v1, Lcom/narvii/prefs/model/DevOption;

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 255
    .line 256
    const-string v2, "server"

    .line 257
    .line 258
    .line 259
    invoke-direct {p0, v2, v1, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V

    .line 260
    goto :goto_2

    .line 261
    :cond_4
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method
