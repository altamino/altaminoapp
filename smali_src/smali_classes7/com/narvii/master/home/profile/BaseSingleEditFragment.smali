.class public abstract Lcom/narvii/master/home/profile/BaseSingleEditFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$api$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment$api$2;-><init>(Lcom/narvii/master/home/profile/BaseSingleEditFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->api$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$progressDialog$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment$progressDialog$2;-><init>(Lcom/narvii/master/home/profile/BaseSingleEditFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->progressDialog$delegate:Lw7/m;

    .line 26
    return-void
.end method

.method public static final synthetic access$createProgressDialog(Lcom/narvii/master/home/profile/BaseSingleEditFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->createProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method private final startSubmit()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->passValidate()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->submit()V

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->progressDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract layoutId()I
.end method

.method public final observeTextChanged(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "et"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;-><init>(Lcom/narvii/master/home/profile/BaseSingleEditFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f080369

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->title()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f121173

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v8, Lcom/narvii/util/ActionBarIcon;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    const v1, 0x7f12052e

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    const v4, 0x3f59999a    # 0.85f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    const v5, 0x7f0604b1

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 45
    move-result v5

    .line 46
    .line 47
    const/16 v6, 0x7f

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v1, v8

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 61
    .line 62
    .line 63
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->layoutId()I

    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f121173

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->startSubmit()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 11
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 20
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "menu"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v2, 0x7f121173

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->passValidate()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    const v4, 0x7f0604b1

    .line 27
    .line 28
    .line 29
    const v5, 0x7f12052e

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v7

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v8

    .line 42
    .line 43
    .line 44
    const v9, 0x3f59999a    # 0.85f

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 52
    move-result v10

    .line 53
    .line 54
    const/16 v11, 0xff

    .line 55
    const/4 v12, 0x0

    .line 56
    move-object v6, v3

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v6 .. v12}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v14

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v15

    .line 71
    .line 72
    .line 73
    const v16, 0x3f59999a    # 0.85f

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 81
    move-result v17

    .line 82
    .line 83
    const/16 v18, 0x80

    .line 84
    .line 85
    const/16 v19, 0x0

    .line 86
    move-object v13, v3

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v13 .. v19}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 96
    return-void
.end method

.method public abstract passValidate()Z
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method protected submit()V
    .locals 0

    return-void
.end method

.method public abstract title()I
.end method

.method protected updateView()V
    .locals 0

    return-void
.end method
