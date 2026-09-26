.class public final Lcom/narvii/prefs/DevSelectionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/DevSelectionFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevSelectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevSelectionFragment.kt\ncom/narvii/prefs/DevSelectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 DevSelectionFragment.kt\ncom/narvii/prefs/DevSelectionFragment\n*L\n81#1:143,2\n*E\n"
.end annotation


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private api:Lcom/narvii/util/http/ApiService;

.field private group:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSingleSelection:Z

.field private option:Lcom/narvii/prefs/model/DevOption;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 15
    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isSingleSelection$p(Lcom/narvii/prefs/DevSelectionFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->isSingleSelection:Z

    .line 3
    return p0
.end method

.method private static final onActivityCreated$lambda$1(Lcom/narvii/prefs/DevSelectionFragment;Landroid/view/View;)V
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
    .line 8
    invoke-direct {p0}, Lcom/narvii/prefs/DevSelectionFragment;->requestDevOptionUpdate()V

    .line 9
    return-void
.end method

.method private final requestDevOptionUpdate()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    const-string v1, "progressDialog"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_8

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "account"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object v0, v2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 43
    move-object v0, v2

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 62
    .line 63
    check-cast v1, Ljava/lang/Iterable;

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, ","

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 92
    move-result v1

    .line 93
    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 95
    const/4 v3, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_5
    const-string v0, ""

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    const-string v3, "/device/dev-options"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    const-string v3, "group"

    .line 119
    .line 120
    iget-object v4, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    iget-object v3, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    .line 127
    .line 128
    if-nez v3, :cond_6

    .line 129
    .line 130
    const-string v3, "option"

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 134
    move-object v3, v2

    .line 135
    .line 136
    :cond_6
    iget-object v3, v3, Lcom/narvii/prefs/model/DevOption;->name:Ljava/lang/String;

    .line 137
    .line 138
    const-string v4, "name"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    const-string v3, "value"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    iget-object v1, p0, Lcom/narvii/prefs/DevSelectionFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 155
    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    const-string v1, "api"

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 162
    goto :goto_2

    .line 163
    :cond_7
    move-object v2, v1

    .line 164
    .line 165
    :goto_2
    new-instance v1, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;

    .line 166
    .line 167
    const-class v3, Lcom/narvii/pushservice/DeviceResponse;

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, p0, v3}, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;-><init>(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 174
    :cond_8
    :goto_3
    return-void
.end method

.method public static synthetic t(Lcom/narvii/prefs/DevSelectionFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/prefs/DevSelectionFragment;->onActivityCreated$lambda$1(Lcom/narvii/prefs/DevSelectionFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;-><init>(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/prefs/d;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/prefs/d;-><init>(Lcom/narvii/prefs/DevSelectionFragment;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f120402

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setRightViewVisible(Z)V

    .line 29
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "group"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getStringParam(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "singleSelection"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->isSingleSelection:Z

    .line 25
    .line 26
    const-string p1, "option"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-class v1, Lcom/narvii/prefs/model/DevOption;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "readAs(...)"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/prefs/model/DevOption;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object v0, v1

    .line 53
    .line 54
    :cond_0
    iget-object v2, v0, Lcom/narvii/prefs/model/DevOption;->value:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const-string v0, ","

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x6

    .line 66
    const/4 v7, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static/range {v2 .. v7}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object v1, v0

    .line 88
    .line 89
    :goto_0
    iget-object p1, v1, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    const-string p1, "api"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    const-string v0, "getService(...)"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 108
    .line 109
    const-string p1, "account"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    .line 121
    .line 122
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 132
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0603eb

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result p2

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    return-void
.end method
