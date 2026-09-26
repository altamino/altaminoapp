.class public final Lcom/narvii/util/debug/ToggleOptionsFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleOptionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleOptionsFragment.kt\ncom/narvii/util/debug/ToggleOptionsFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,116:1\n262#2,2:117\n262#2,2:119\n262#2,2:121\n262#2,2:123\n262#2,2:125\n262#2,2:127\n262#2,2:129\n262#2,2:131\n262#2,2:133\n262#2,2:135\n262#2,2:137\n262#2,2:139\n*S KotlinDebug\n*F\n+ 1 ToggleOptionsFragment.kt\ncom/narvii/util/debug/ToggleOptionsFragment\n*L\n94#1:117,2\n95#1:119,2\n96#1:121,2\n97#1:123,2\n101#1:125,2\n102#1:127,2\n103#1:129,2\n104#1:131,2\n108#1:133,2\n109#1:135,2\n110#1:137,2\n111#1:139,2\n*E\n"
.end annotation


# instance fields
.field private attestationTokenLabel:Landroid/widget/TextView;

.field private attestationTokenSwitch:Landroid/widget/Switch;

.field private errorMessage:Landroid/widget/TextView;

.field private progressIndicator:Landroid/widget/ProgressBar;

.field private viewModel:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getAttestationTokenSwitch$p(Lcom/narvii/util/debug/ToggleOptionsFragment;)Landroid/widget/Switch;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$hideLoading(Lcom/narvii/util/debug/ToggleOptionsFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->hideLoading()V

    .line 4
    return-void
.end method

.method public static final synthetic access$showErrorMessage(Lcom/narvii/util/debug/ToggleOptionsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/ToggleOptionsFragment;->showErrorMessage(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$showLoading(Lcom/narvii/util/debug/ToggleOptionsFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->showLoading()V

    .line 4
    return-void
.end method

.method private final findViews(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0152

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "findViewById(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenLabel:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0153

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v0, Landroid/widget/Switch;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0b92

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast v0, Landroid/widget/ProgressBar;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->progressIndicator:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0a04ff

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->errorMessage:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method private final hideLoading()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenLabel:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "attestationTokenLabel"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "attestationTokenSwitch"

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    move-object v0, v1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->progressIndicator:Landroid/widget/ProgressBar;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "progressIndicator"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    move-object v0, v1

    .line 39
    .line 40
    :cond_2
    const/16 v2, 0x8

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->errorMessage:Landroid/widget/TextView;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string v0, "errorMessage"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-object v1, v0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public static synthetic n(Lcom/narvii/util/debug/ToggleOptionsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/debug/ToggleOptionsFragment;->setupToggleSwitch$lambda$0(Lcom/narvii/util/debug/ToggleOptionsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private final observeViewState()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->viewModel:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "viewModel"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->getToggleViewState()Landroidx/lifecycle/LiveData;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;-><init>(Lcom/narvii/util/debug/ToggleOptionsFragment;)V

    .line 25
    .line 26
    new-instance v3, Lcom/narvii/util/debug/ToggleOptionsFragment$sam$androidx_lifecycle_Observer$0;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/narvii/util/debug/ToggleOptionsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Le8/l;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    return-void
.end method

.method private final setupToggleSwitch()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "attestationTokenSwitch"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Lcom/narvii/util/debug/b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/util/debug/b;-><init>(Lcom/narvii/util/debug/ToggleOptionsFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    return-void
.end method

.method private static final setupToggleSwitch$lambda$0(Lcom/narvii/util/debug/ToggleOptionsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->viewModel:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    .line 13
    const-string/jumbo p0, "viewModel"

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
    invoke-virtual {p0, p2}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->updateAttestationFailure(Z)V

    .line 21
    return-void
.end method

.method private final setupViewModel()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->Companion:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/util/debug/model/ToggleOptionsRepository;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    const-string v3, "requireContext(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/narvii/util/debug/model/ToggleOptionsRepository;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;->factory(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 26
    .line 27
    const-class v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->viewModel:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 36
    return-void
.end method

.method private final showErrorMessage(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenLabel:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "attestationTokenLabel"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "attestationTokenSwitch"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    move-object v0, v1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->progressIndicator:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string v0, "progressIndicator"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    move-object v0, v1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->errorMessage:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v2, "errorMessage"

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    move-object v0, v1

    .line 53
    :cond_3
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->errorMessage:Landroid/widget/TextView;

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move-object v1, v0

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method private final showLoading()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenLabel:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "attestationTokenLabel"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->attestationTokenSwitch:Landroid/widget/Switch;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "attestationTokenSwitch"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    move-object v0, v1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->progressIndicator:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string v0, "progressIndicator"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    move-object v0, v1

    .line 40
    :cond_2
    const/4 v3, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->errorMessage:Landroid/widget/TextView;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    const-string v0, "errorMessage"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-object v1, v0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->setupViewModel()V

    .line 7
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
    const p3, 0x7f0d0755

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/ToggleOptionsFragment;->findViews(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->setupToggleSwitch()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->observeViewState()V

    .line 26
    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment;->viewModel:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "viewModel"

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
    invoke-virtual {v0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->fetchToggleOptions()V

    .line 18
    return-void
.end method
