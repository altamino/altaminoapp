.class public final Lcom/narvii/master/theme/MasterThemeFragment;
.super Lcom/narvii/app/NVFragment;
.source "MasterThemeFragment.kt"

# interfaces
.implements Lcom/narvii/master/theme/MasterThemeListener;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

.field private masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

.field private onBackgroundChangedCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/widget/ImageView;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private overlay:Landroid/view/View;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOverlay$p(Lcom/narvii/master/theme/MasterThemeFragment;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$setOverlay$p(Lcom/narvii/master/theme/MasterThemeFragment;Landroid/view/View;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/PreferencesHelper;->getMasterMediaList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/narvii/util/PreferencesHelper;->getMasterThemeColor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_4

    .line 79
    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;

    invoke-direct {v2, p0, p2}, Lcom/narvii/master/theme/MasterThemeFragment$updateMasterAppearance$1;-><init>(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 85
    :cond_4
    iget-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Media;

    :cond_5
    invoke-virtual {p2, v0}, Lcom/narvii/master/MasterAppearanceView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :cond_6
    return-void
.end method

.method static synthetic updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 75
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getOnBackgroundChangedCallback()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "masterTheme"

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"masterTheme\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/master/theme/MasterThemeService;

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    .line 33
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02b9

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/master/theme/MasterThemeService;->unregisterListener(Lcom/narvii/master/theme/MasterThemeListener;)V

    return-void

    :cond_0
    const-string v0, "masterThemeService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/theme/MasterThemeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onMasterThemeChanged(Ljava/util/List;Ljava/lang/Integer;)V
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

    .line 60
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->getMasterMediaList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/util/PreferencesHelper;->getMasterThemeColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 62
    :goto_1
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 67
    invoke-static {p0, v1, v1, p1, v1}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_4

    .line 63
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/narvii/util/PreferencesHelper;->setMasterThemeMediaList(Ljava/util/List;)V

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->setKeyMasterThemeColor(I)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 65
    :cond_6
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance(Ljava/util/List;Ljava/lang/Integer;)V

    :goto_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0906c0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lcom/narvii/master/MasterAppearanceView;

    iput-object p2, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterBackgroundView:Lcom/narvii/master/MasterAppearanceView;

    const p2, 0x7f0906c1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 44
    invoke-static {p0, p2, p2, p1, p2}, Lcom/narvii/master/theme/MasterThemeFragment;->updateMasterAppearance$default(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->masterThemeService:Lcom/narvii/master/theme/MasterThemeService;

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "overlayColor"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_2

    .line 49
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->overlay:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "masterThemeService"

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.master.MasterAppearanceView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnBackgroundChangedCallback(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/widget/ImageView;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeFragment;->onBackgroundChangedCallback:Lkotlin/jvm/functions/Function3;

    return-void
.end method
