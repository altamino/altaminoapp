.class public Lcom/narvii/user/picker/MultiUserPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MultiUserPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;,
        Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_MEMBER_COUNT:I = 0x64


# instance fields
.field protected adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private maxMember:I

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private searchIcon:Landroid/view/View;

.field showSearchBar:Z

.field spamProtection:Z

.field private thumbContainer:Landroid/widget/LinearLayout;

.field thumbContainerScroller:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/picker/MultiUserPickerFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->maxMember:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/user/picker/MultiUserPickerFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->updateThumbViews()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/user/picker/MultiUserPickerFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p1
.end method

.method static synthetic access$402(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    return-object p1
.end method

.method private clearSearchEdit()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SearchBar;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateThumbViews()V
    .locals 7

    .line 401
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 404
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 410
    :cond_1
    new-instance v2, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 412
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 413
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 414
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 415
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0807ec

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f060215

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 418
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_1
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    iput v3, v2, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 419
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f06003c

    goto :goto_2

    :cond_3
    const v6, 0x7f06003d

    :goto_2
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 421
    iput v4, v2, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 422
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v3, 0x7f0901fc

    .line 423
    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 424
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$2;

    invoke-direct {v0, p0, v2}, Lcom/narvii/user/picker/MultiUserPickerFragment$2;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/ThumbImageView;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->searchIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 110
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    .line 111
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    if-nez p1, :cond_0

    const-string p1, "users"

    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    const/4 p1, 0x0

    const-string v0, "showSearchBar"

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar:Z

    const-string p1, "maxMember"

    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->maxMember:I

    :cond_0
    const-string p1, "exists"

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    const-string p1, "userids"

    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    .line 122
    new-instance p1, Lcom/narvii/user/picker/MultiUserPickerFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$1;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 128
    new-instance v0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 129
    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 345
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 346
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "users"

    .line 347
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 348
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 84
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatSpamProtectionEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->spamProtection:Z

    .line 85
    iget-boolean p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->spamProtection:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f112f

    goto :goto_0

    :cond_0
    const p1, 0x7f0f02c3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 138
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 140
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 142
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->adapter:Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->onConfirmPick(Ljava/util/List;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f0903ed

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 99
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 100
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0c48

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar:Z

    return v0
.end method

.method public target()Ljava/lang/String;
    .locals 1

    const-string v0, "member"

    return-object v0
.end method

.method protected updateViews()V
    .locals 4

    .line 155
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 156
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/user/picker/MultiUserPickerFragment;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method
