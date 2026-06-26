.class public final Lcom/narvii/master/search/GlobalSearchBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "GlobalSearchBaseFragment.kt"

# interfaces
.implements Lcom/narvii/master/search/ChangeSearchTextListener;
.implements Lcom/narvii/search/ISearchBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalSearchBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalSearchBaseFragment.kt\ncom/narvii/master/search/GlobalSearchBaseFragment\n*L\n1#1,216:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;

.field public static final INDEX_CHAT:I = 0x6

.field public static final INDEX_COMMUNITY:I = 0x1

.field public static final INDEX_MY_CHAT:I = 0x7

.field public static final INDEX_POST:I = 0x5

.field public static final INDEX_STORY:I = 0x3

.field public static final INDEX_TOPIC:I = 0x4

.field public static final INDEX_USER:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private searchBack:Lcom/narvii/widget/TintButton;

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private searchCancel:Landroid/widget/Button;

.field private searchId:Ljava/lang/String;

.field private searchKey:Ljava/lang/String;

.field private searchText:Landroid/widget/EditText;

.field private sectionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->Companion:Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic access$getSearchBar$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method public static final synthetic access$getSearchKey$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSearchText$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$logSearchEvent(Lcom/narvii/master/search/GlobalSearchBaseFragment;Lcom/narvii/master/search/SearchLog;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public static final synthetic access$setCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public static final synthetic access$setSearchBar$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;Lcom/narvii/widget/SearchBar;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-void
.end method

.method public static final synthetic access$setSearchKey$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSearchText$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    return-void
.end method

.method private final getCurrentSearchType()Ljava/lang/String;
    .locals 1

    .line 189
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "myChats"

    return-object v0

    :pswitch_1
    const-string v0, "chats"

    return-object v0

    :pswitch_2
    const-string v0, "posts"

    return-object v0

    :pswitch_3
    const-string v0, "topics"

    return-object v0

    :pswitch_4
    const-string v0, "stories"

    return-object v0

    :pswitch_5
    const-string v0, "users"

    return-object v0

    :pswitch_6
    const-string v0, "communities"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final logSearchEvent(Lcom/narvii/master/search/SearchLog;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    .line 208
    iget-object v1, p1, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    sget-object v2, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    const-string v3, "inputText"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 209
    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "InputArea"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 210
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->getCurrentSearchType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "searchType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "searchId"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 211
    iget-boolean p1, p1, Lcom/narvii/master/search/SearchLog;->instant:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "instantSearch"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_2
    return-void
.end method

.method private final replaceContainer()V
    .locals 4

    .line 143
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    .line 150
    :pswitch_0
    new-instance v0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;-><init>()V

    goto :goto_0

    .line 145
    :pswitch_1
    new-instance v0, Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;-><init>()V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;-><init>()V

    goto :goto_0

    .line 144
    :pswitch_3
    new-instance v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;-><init>()V

    goto :goto_0

    .line 148
    :pswitch_4
    new-instance v0, Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;-><init>()V

    goto :goto_0

    .line 147
    :pswitch_5
    new-instance v0, Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-direct {v0}, Lcom/narvii/master/search/GlobalUserSearchFragment;-><init>()V

    goto :goto_0

    .line 149
    :pswitch_6
    new-instance v0, Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {v0}, Lcom/narvii/master/CommunitySearchListFragment;-><init>()V

    .line 143
    :goto_0
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 153
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 154
    instance-of v2, v0, Lcom/narvii/master/search/ChangeSearchTextRegister;

    if-eqz v2, :cond_0

    .line 155
    check-cast v0, Lcom/narvii/master/search/ChangeSearchTextRegister;

    invoke-interface {v0, p0}, Lcom/narvii/master/search/ChangeSearchTextRegister;->setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V

    .line 157
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    const-string v3, "search_key"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "hide_match_id_adapter"

    .line 159
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    iget v3, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    if-ne v3, v2, :cond_1

    const-string v3, "key_result_page"

    .line 161
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0909d3

    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setEditTextHint(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 136
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const v0, 0x7f0f0f48

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0f57

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public changeSearchText(Ljava/lang/String;Z)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 122
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 124
    invoke-static {p2}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalSingleSearch"

    return-object v0
.end method

.method public getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "search"

    const-string v0, "searchId is null"

    .line 183
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    return-object p1
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->instant()Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "section_type"

    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    const-string v0, "search_key"

    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02dc

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-static {p1, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    const-string p2, "SearchHistory"

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    const p2, 0x7f0909ca

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SearchBar;

    iput-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 68
    sget p2, Lcom/narvii/amino/R$id;->search_bar:I

    invoke-virtual {p0, p2}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-static {p2, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    const p2, 0x7f0909c8

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    iput-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBack:Lcom/narvii/widget/TintButton;

    .line 70
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBack:Lcom/narvii/widget/TintButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBack:Lcom/narvii/widget/TintButton;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$1;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p2, 0x7f0909e2

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    .line 73
    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    const v0, 0x7f0909d0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchCancel:Landroid/widget/Button;

    .line 78
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchCancel:Landroid/widget/Button;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$3;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 80
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 82
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->replaceContainer()V

    .line 83
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->setEditTextHint(Landroid/widget/EditText;)V

    const-string p1, "showKeyboard"

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 101
    new-instance p1, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$5;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$5;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method
