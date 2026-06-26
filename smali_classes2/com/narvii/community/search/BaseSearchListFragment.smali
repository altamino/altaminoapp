.class public abstract Lcom/narvii/community/search/BaseSearchListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BaseSearchListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# static fields
.field private static final KEY_QUERY_KEY:Ljava/lang/String; = "queryKey"

.field private static final KEY_SEARCH_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_SHOW_MY_COMMUNITY:Ljava/lang/String; = "showMyCommunity"

.field private static final KEY_SHOW_TRENDING:Ljava/lang/String; = "showTrending"

.field private static final PTN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BaseSearchListFragment"


# instance fields
.field protected curQueryKey:Ljava/lang/String;

.field protected inviteCode:Ljava/lang/String;

.field protected pendingSearch:Z

.field final refresh:Ljava/lang/Runnable;

.field protected searchLanguage:Ljava/lang/String;

.field protected showMyCommunity:Z

.field protected showTrending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\d\\w]{10}"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/community/search/BaseSearchListFragment;->PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 159
    new-instance v0, Lcom/narvii/community/search/BaseSearchListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/search/BaseSearchListFragment$2;-><init>(Lcom/narvii/community/search/BaseSearchListFragment;)V

    iput-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method private isAminoCommunityLink(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 206
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "http"

    .line 208
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_2

    const-string p2, "c"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 218
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_3

    const-string p2, "invite"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/narvii/community/search/BaseSearchListFragment;->PTN:Ljava/util/regex/Pattern;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->inviteCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 93
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 96
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x33ffffff

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 98
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected isAminoCommunityLink(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/search/BaseSearchListFragment;->isAminoCommunityLink(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isInviteLink(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/search/BaseSearchListFragment;->isAminoCommunityLink(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const-string v0, "queryKey"

    const-string v1, "language"

    const-string v2, "showTrending"

    const/4 v3, 0x0

    const/16 v4, 0x64

    const-string v5, "showMyCommunity"

    const/4 v6, 0x1

    if-nez p1, :cond_2

    .line 67
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v5, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showMyCommunity:Z

    .line 68
    invoke-virtual {p0, v2, v6}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 69
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    sget v7, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v7, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showMyCommunity:Z

    .line 73
    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget p3, Lcom/narvii/lib/R$layout;->community_search_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 113
    new-instance p2, Lcom/narvii/community/search/BaseSearchListFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/community/search/BaseSearchListFragment$1;-><init>(Lcom/narvii/community/search/BaseSearchListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected onRealTimeSearch()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    iget-boolean v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showMyCommunity:Z

    const-string v1, "showMyCommunity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    iget-boolean v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    const-string v1, "showTrending"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    const-string v1, "queryKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->onSearchButtonClicked()V

    return-void
.end method

.method protected onSearchButtonClicked()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->refresh:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iput-object p2, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->pendingSearch:Z

    .line 175
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->refresh:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->setUpEmptyView()V

    return-void
.end method

.method protected setUpEmptyView()V
    .locals 2

    .line 135
    sget v0, Lcom/narvii/lib/R$layout;->incubator_search_no_trending_empty_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object v0

    .line 136
    sget v1, Lcom/narvii/lib/R$id;->empty_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/narvii/lib/R$string;->search_zero_info1:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->search_empty_info1:I

    .line 138
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
