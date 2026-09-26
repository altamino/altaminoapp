.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_SELECT_FILTERS:I = 0xc9

.field protected static final SORT_MODE_DEFAULT:I = 0x0

.field protected static final SORT_MODE_LONGEST:I = 0x3

.field protected static final SORT_MODE_RELEVANCE:I = 0x1

.field protected static final SORT_MODE_SHORTEST:I = 0x2

.field private static final SORT_REQUEST_ENUM:[Ljava/lang/String;


# instance fields
.field protected adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

.field protected category:Lcom/narvii/media/online/audio/model/AssetCategory;

.field private isFilterAndSortEnable:Z

.field protected selectSortMode:I

.field private selectedSubcategory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortSelectWindow:Landroid/widget/PopupWindow;

.field private subcategoryCount:Landroid/widget/TextView;

.field private subcategoryEntrance:Landroid/widget/ImageView;

.field private subcategoryResultCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "shortest"

    const-string v1, "longest"

    const-string v2, "default"

    const-string v3, "relevance"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->SORT_REQUEST_ENUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 17
    return-void
.end method

.method private synthetic lambda$initPopupWindow$1(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 7
    move-result p2

    .line 8
    .line 9
    sget v0, Lcom/narvii/lib/R$id;->sort_text:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    sget v0, Lcom/narvii/lib/R$id;->sort_select_default:I

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 23
    .line 24
    sget p2, Lcom/narvii/lib/R$string;->_default:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    .line 31
    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    const/4 p2, 0x1

    .line 34
    .line 35
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 36
    .line 37
    sget p2, Lcom/narvii/lib/R$string;->relevance:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    sget v0, Lcom/narvii/lib/R$id;->sort_select_longest:I

    .line 44
    .line 45
    if-ne p2, v0, :cond_3

    .line 46
    const/4 p2, 0x3

    .line 47
    .line 48
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 49
    .line 50
    sget p2, Lcom/narvii/lib/R$string;->longest:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->sort_select_shortest:I

    .line 57
    .line 58
    if-ne p2, v0, :cond_4

    .line 59
    const/4 p2, 0x2

    .line 60
    .line 61
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 62
    .line 63
    sget p2, Lcom/narvii/lib/R$string;->shortest:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    .line 77
    return-void
.end method

.method private synthetic lambda$initPopupWindow$2(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$id;->popup_list:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    const/4 p3, 0x0

    .line 10
    move v0, p3

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 25
    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    .line 29
    const v2, 0x3cffffff    # 0.031249998f

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v2, p3

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    sget v2, Lcom/narvii/lib/R$string;->sort_selected:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 47
    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    move v2, p3

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_1
    const/16 v2, 0x8

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Filter"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "ndc://fragment/"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-class v1, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "android.intent.action.VIEW"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->presetSubCategoryViewData(Landroid/content/Intent;)V

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    const-string v1, "selectedCategory"

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    const-string v0, "customFinishAnimIn"

    .line 71
    const/4 v1, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    const-string v0, "customFinishAnimOut"

    .line 77
    .line 78
    sget v2, Lcom/narvii/lib/R$anim;->activity_push_bottom_out:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    const/16 v0, 0xc9

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1, v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    sget v0, Lcom/narvii/lib/R$anim;->activity_push_bottom_in:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 96
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

.method public static synthetic t(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->lambda$initPopupWindow$2(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->lambda$initPopupWindow$1(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateSubcategoryEntrance()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetCategory;->children:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    .line 25
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    sget v4, Lcom/narvii/lib/R$drawable;->ic_online_picker_filter:I

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_2
    sget v4, Lcom/narvii/lib/R$drawable;->ic_online_picker_filter_green:I

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const/high16 v4, 0x3f800000    # 1.0f

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_3
    const v4, 0x3e99999a    # 0.3f

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 61
    .line 62
    iget-boolean v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v2, v1

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 72
    .line 73
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 86
    .line 87
    const/16 v1, 0x8

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    goto :goto_4

    .line 92
    .line 93
    :cond_6
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 104
    move-result v1

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_7
    :goto_4
    return-void
.end method

.method public static synthetic v(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryResultCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic y()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->SORT_REQUEST_ENUM:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getDefaultSelectMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "music_category"

    return-object v0
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->media_audio_online_picker_sort_select:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/media/online/audio/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/narvii/media/online/audio/a;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;)V

    .line 21
    .line 22
    sget v2, Lcom/narvii/lib/R$id;->sort_select_default:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    sget v2, Lcom/narvii/lib/R$id;->sort_select_shortest:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    sget v2, Lcom/narvii/lib/R$id;->sort_select_longest:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    new-instance v1, Landroid/widget/PopupWindow;

    .line 59
    const/4 v2, -0x2

    .line 60
    const/4 v3, 0x1

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 64
    .line 65
    iput-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    .line 66
    .line 67
    sget v1, Lcom/narvii/lib/R$id;->sort_filter:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/media/online/audio/b;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/media/online/audio/b;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 82
    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 98
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xc9

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 13
    .line 14
    const-string p1, "selectedCategory"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-class p2, Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->updateSubcategoryEntrance()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 44
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "category"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 20
    .line 21
    const-string p1, "isFilterAndSortEnable"

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    .line 7
    .line 8
    sget p2, Lcom/narvii/lib/R$id;->filter_result_count:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryResultCount:Landroid/widget/TextView;

    .line 17
    .line 18
    sget p2, Lcom/narvii/lib/R$id;->filter_entrance:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget p2, Lcom/narvii/lib/R$id;->filter_count:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 39
    .line 40
    new-instance p2, Lcom/narvii/media/online/audio/c;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/c;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->updateSubcategoryEntrance()V

    .line 50
    return-void
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
