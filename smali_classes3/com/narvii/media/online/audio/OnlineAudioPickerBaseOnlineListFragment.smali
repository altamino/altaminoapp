.class public abstract Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.source "OnlineAudioPickerBaseOnlineListFragment.java"


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
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "relevance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "longest"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->SORT_REQUEST_ENUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Ljava/util/Set;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->SORT_REQUEST_ENUM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryResultCount:Landroid/widget/TextView;

    return-object p0
.end method

.method private updateSubcategoryEntrance()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetCategory;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/narvii/lib/R$drawable;->ic_online_picker_filter:I

    goto :goto_1

    :cond_2
    sget v4, Lcom/narvii/lib/R$drawable;->ic_online_picker_filter_green:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v4, 0x3e99999a    # 0.3f

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 119
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 122
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method protected getDefaultSelectMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicCategory"

    return-object v0
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    sget v1, Lcom/narvii/lib/R$layout;->media_audio_online_picker_sort_select:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$Z85E6AJONPVooZiYpiQOZFFyjmE;

    invoke-direct {v1, p0, p1}, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$Z85E6AJONPVooZiYpiQOZFFyjmE;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;)V

    .line 161
    sget v2, Lcom/narvii/lib/R$id;->sort_select_default:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget v2, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget v2, Lcom/narvii/lib/R$id;->sort_select_shortest:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget v2, Lcom/narvii/lib/R$id;->sort_select_longest:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    .line 167
    sget v1, Lcom/narvii/lib/R$id;->sort_filter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 168
    new-instance v1, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$OkpeU5BwvBy7gJP9GIqkHUm9eNE;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$OkpeU5BwvBy7gJP9GIqkHUm9eNE;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-boolean v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 188
    iget-boolean v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method public synthetic lambda$initPopupWindow$1$OnlineAudioPickerBaseOnlineListFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 144
    sget v0, Lcom/narvii/lib/R$id;->sort_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 145
    sget v0, Lcom/narvii/lib/R$id;->sort_select_default:I

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 146
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 147
    sget p2, Lcom/narvii/lib/R$string;->_default:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 148
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->sort_select_relevance:I

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    .line 149
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 150
    sget p2, Lcom/narvii/lib/R$string;->relevance:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 151
    :cond_2
    sget v0, Lcom/narvii/lib/R$id;->sort_select_longest:I

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    .line 152
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 153
    sget p2, Lcom/narvii/lib/R$string;->longest:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 154
    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->sort_select_shortest:I

    if-ne p2, v0, :cond_4

    const/4 p2, 0x2

    .line 155
    iput p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 156
    sget p2, Lcom/narvii/lib/R$string;->shortest:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 159
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    return-void
.end method

.method public synthetic lambda$initPopupWindow$2$OnlineAudioPickerBaseOnlineListFragment(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 170
    sget p3, Lcom/narvii/lib/R$id;->popup_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    iget v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    if-ne v0, v2, :cond_0

    const v2, 0x3cffffff    # 0.031249998f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 174
    sget v2, Lcom/narvii/lib/R$id;->sort_selected:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->sortSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$OnlineAudioPickerBaseOnlineListFragment(Landroid/view/View;)V
    .locals 3

    .line 86
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Filter"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 87
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->presetSubCategoryViewData(Landroid/content/Intent;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedCategory"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "customFinishAnimIn"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    sget v1, Lcom/narvii/lib/R$anim;->activity_push_bottom_out:I

    const-string v2, "customFinishAnimOut"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc9

    .line 93
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/narvii/lib/R$anim;->activity_push_bottom_in:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-string p1, "selectedCategory"

    .line 103
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectedSubcategory:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->updateSubcategoryEntrance()V

    .line 108
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;->resetList()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "category"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/media/online/audio/model/AssetCategory;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/model/AssetCategory;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->category:Lcom/narvii/media/online/audio/model/AssetCategory;

    const-string p1, "isFilterAndSortEnable"

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->isFilterAndSortEnable:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 75
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    .line 82
    sget p2, Lcom/narvii/lib/R$id;->filter_result_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryResultCount:Landroid/widget/TextView;

    .line 83
    sget p2, Lcom/narvii/lib/R$id;->filter_entrance:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    .line 84
    sget p2, Lcom/narvii/lib/R$id;->filter_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryCount:Landroid/widget/TextView;

    .line 85
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->subcategoryEntrance:Landroid/widget/ImageView;

    new-instance p2, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$yWUfzDUJWBPp9DKHYNnpHgUFYCg;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerBaseOnlineListFragment$yWUfzDUJWBPp9DKHYNnpHgUFYCg;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->updateSubcategoryEntrance()V

    return-void
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
