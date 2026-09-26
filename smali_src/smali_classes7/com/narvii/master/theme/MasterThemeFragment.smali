.class public final Lcom/narvii/master/theme/MasterThemeFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/theme/MasterThemeListener;


# instance fields
.field private masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

.field private onBackgroundChangedCallback:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "-",
            "Landroid/widget/ImageView;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private overlay:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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

.method public static synthetic n(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance$lambda$0(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method

.method private final updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/util/PreferencesHelper;->getMasterMediaList()Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/util/PreferencesHelper;->getMasterThemeColor()I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object p2, v0

    .line 30
    .line 31
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Le8/q;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/master/theme/a;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, p2}, Lcom/narvii/master/theme/a;-><init>(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 46
    .line 47
    :cond_4
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    .line 48
    .line 49
    if-eqz p2, :cond_6

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    const/4 v0, 0x0

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    move-object v0, p1

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/model/Media;

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-virtual {p2, v0}, Lcom/narvii/master/MasterAppearanceView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 63
    :cond_6
    return-void
.end method

.method static synthetic updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    move-object p1, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    move-object p2, v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V

    .line 15
    return-void
.end method

.method private static final updateMasterAppearance$lambda$0(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    const-string p4, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p4, 0x4

    .line 7
    .line 8
    if-ne p3, p4, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Le8/q;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p2, p0, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final getOnBackgroundChangedCallback()Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/q<",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Le8/q;

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    const-string p1, "masterTheme"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/master/theme/MasterThemeService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 26
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
    const p3, 0x7f0d02eb

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "masterThemeService"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/master/theme/MasterThemeService;->unregisterListener(Lcom/narvii/master/theme/MasterThemeListener;)V

    .line 17
    return-void
.end method

.method public onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getMasterMediaList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    .line 13
    :goto_0
    iget-object v2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/util/PreferencesHelper;->getMasterThemeColor()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v2, v1

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 p1, 0x3

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1, v1, p1, v1}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/narvii/util/PreferencesHelper;->setMasterThemeMediaList(Ljava/util/List;)V

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->setKeyMasterThemeColor(I)V

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V

    .line 68
    :goto_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a084e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterAppearanceView"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/master/MasterAppearanceView;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a084f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    .line 34
    const/4 p1, 0x3

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p2, p2, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    const-string p1, "masterThemeService"

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    move-object p1, p2

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1, p0}, Lcom/narvii/master/theme/MasterThemeService;->registerListener(Lcom/narvii/master/theme/MasterThemeListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const-string p2, "overlayColor"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 63
    move-result p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    :cond_1
    if-eqz p2, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    :cond_3
    return-void
.end method

.method public final setOnBackgroundChangedCallback(Le8/q;)V
    .locals 0
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroid/widget/ImageView;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Le8/q;

    return-void
.end method
