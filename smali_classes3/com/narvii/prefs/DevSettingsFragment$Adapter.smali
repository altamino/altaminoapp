.class final Lcom/narvii/prefs/DevSettingsFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "DevSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/DevSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevSettingsFragment.kt\ncom/narvii/prefs/DevSettingsFragment$Adapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,170:1\n1587#2,2:171\n1587#2,2:173\n*E\n*S KotlinDebug\n*F\n+ 1 DevSettingsFragment.kt\ncom/narvii/prefs/DevSettingsFragment$Adapter\n*L\n118#1,2:171\n122#1,2:173\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static final synthetic access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->finishUpdateOption()V

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

    .line 126
    iget-object v0, p2, Lcom/narvii/prefs/model/DevOption;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x44a8e1b9

    if-eq v1, v2, :cond_3

    const v2, -0x33c144ac    # -4.9999184E7f

    if-eq v1, v2, :cond_2

    const v2, -0xa3259f1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "multiple-selection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_2
    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v1, p2, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;)V

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 147
    iget-object p1, p2, Lcom/narvii/prefs/model/DevOption;->value:Ljava/lang/String;

    const-string p2, "true"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 148
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v1, "single-selection"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    :goto_0
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    iget-object v1, p2, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$2;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;)V

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 160
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private final finishUpdateOption()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 167
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSettingsFragment;->access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDevOptions()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/prefs/model/DevOptions;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/model/DevOptions;

    .line 92
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    const v2, 0x7f0f0273

    invoke-direct {v1, v2}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const-string v3, "Diagnosis"

    invoke-direct {v1, v3}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 95
    const-class v3, Lcom/narvii/util/diagnosis/DiagnosisFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    const-string v3, "Video Debug"

    invoke-direct {v1, v3}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v3}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "VideoDebug"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 100
    new-instance v3, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$2;

    invoke-direct {v3, p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$2;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    iput-object v3, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 104
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const-string v3, "Video Resolution"

    invoke-direct {v1, v3}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 107
    const-class v3, Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    const-string v3, "Strategy Debug Info"

    invoke-direct {v1, v3}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v3}, Lcom/narvii/prefs/DevSettingsFragment;->access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "VideoStrategyInfo"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 112
    new-instance v3, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;

    invoke-direct {v3, p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$buildCells$3;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    iput-object v3, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "it"

    if-eqz v0, :cond_0

    .line 118
    iget-object v3, v0, Lcom/narvii/prefs/model/DevOptions;->client:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 171
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/prefs/model/DevOption;

    .line 118
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "client"

    invoke-direct {p0, v5, v4, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 122
    iget-object v0, v0, Lcom/narvii/prefs/model/DevOptions;->server:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 121
    new-instance v3, Lcom/narvii/list/prefs/PrefsSection;

    const v4, 0x7f0f0f84

    invoke-direct {v3, v4}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    iput-boolean v2, v3, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/prefs/model/DevOption;

    .line 122
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "server"

    invoke-direct {p0, v3, v2, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method
