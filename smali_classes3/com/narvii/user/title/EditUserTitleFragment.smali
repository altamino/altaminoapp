.class public Lcom/narvii/user/title/EditUserTitleFragment;
.super Lcom/narvii/app/NVFragment;
.source "EditUserTitleFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;,
        Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;
    }
.end annotation


# static fields
.field public static final HEIGHT_MAX_LINES:I = 0x3

.field public static final REQUEST_COLOR_PICKER:I = 0x6d


# instance fields
.field private allTitleHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field allTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field private animation:Landroid/view/animation/Animation;

.field cid:I

.field public countView:Landroid/widget/TextView;

.field private limitAlertView:Landroid/widget/TextView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field scrollToBottom:Z

.field public scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

.field searchKeyword:Ljava/lang/String;

.field private searchTask:Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

.field private selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

.field private statusLayout:Lcom/narvii/widget/NVStatusLayout;

.field public submitButton:Landroid/view/View;

.field submittedTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field title:Landroid/widget/TextView;

.field user:Lcom/narvii/model/User;

.field public userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

.field private userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->submitTitles()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->changeSubmitStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->updateCountView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->sendRequest()V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/widget/NVStatusLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->limitAlertView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchTask:Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchTask:Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->goToSearchResultPage(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->goToAllTagListPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->animation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/user/title/EditUserTitleFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleHashSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleHashSet:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    return-object p1
.end method

.method private anyChanges()Z
    .locals 1

    .line 504
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isTagListChanged()Z

    move-result v0

    return v0
.end method

.method private canSubmitEnable()Z
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextBeyondLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isTagListChanged()Z

    move-result v0

    return v0
.end method

.method private changeSubmitStatus()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->canSubmitEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private goToAllTagListPage()V
    .locals 3

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0f00ea

    .line 514
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    :cond_1
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 518
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private goToSearchResultPage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0f0b25

    .line 523
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_1
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    iget v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V

    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 527
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private isEditTextBeyondLimit()Z
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEditTextEmpty()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isTagListChanged()Z
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object v2, v2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private scrollToBottom()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->scrollToBottom(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method

.method private sendRequest()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVStatusLayout;->showLoading()V

    .line 532
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$14;

    const-class v2, Lcom/narvii/user/title/CommunityUseTitleListResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/user/title/EditUserTitleFragment$14;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/narvii/user/title/UserTitleRepository;->getAllUserTitleList(Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method private submitTitles()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    new-instance v2, Lcom/narvii/model/api/UserTitle;

    invoke-direct {v2, v0}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 178
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    iget-object v3, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/narvii/user/title/EditUserTitleFragment$2;

    const-class v5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v4, p0, v5, v1, v0}, Lcom/narvii/user/title/EditUserTitleFragment$2;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/user/title/UserTitleRepository;->adminUserTitleList(Ljava/lang/String;Ljava/util/List;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    return-void
.end method

.method private updateCountView(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 440
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0802ae

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/FragmentWrapperActivity;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b067b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b13

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    .line 150
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, "userTitle"

    .line 427
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/api/UserTitle;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 428
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateUserTitle(Lcom/narvii/model/api/UserTitle;)V

    return-void

    .line 431
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 218
    instance-of v0, p1, Lcom/narvii/app/FragmentWrapperActivity;

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->anyChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03a4

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 222
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$3;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f03e2

    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "config"

    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 120
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    const-string p1, "user"

    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 122
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 127
    :cond_0
    new-instance p1, Lcom/narvii/user/title/UserTitleRepository;

    iget v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    invoke-direct {p1, p0, v0}, Lcom/narvii/user/title/UserTitleRepository;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    .line 129
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->customTitles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b029b

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 242
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 243
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    if-nez p2, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 247
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BubbleBackground;

    .line 248
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getSlideShowMedias()Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 250
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 251
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 259
    :goto_0
    new-instance p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;-><init>(I)V

    .line 260
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09093d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 261
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 262
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 264
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0909c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 265
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$4;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/widget/ScrollDetectFrameLayout;->setScrollDetectListener(Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;)V

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090c3e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 275
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setTagEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;)V

    .line 321
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$6;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$6;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setUserTitleTransformer(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;)V

    .line 334
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$7;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setUserTitleColorEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;)V

    .line 343
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$8;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setOnTagRemovedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;)V

    .line 357
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$9;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$9;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setOnSelectedChangedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;)V

    .line 364
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitleList(Ljava/util/List;)V

    .line 365
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090aa3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVStatusLayout;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    .line 366
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$10;

    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$10;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVStatusLayout;->setOnErrorRetryListener(Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;)V

    .line 373
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09065f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->limitAlertView:Landroid/widget/TextView;

    .line 374
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->limitAlertView:Landroid/widget/TextView;

    const v1, 0x7f0f1141

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090a0c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    .line 377
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/narvii/user/title/EditUserTitleFragment;->updateCountView(Ljava/util/List;)V

    .line 379
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 380
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f0909c3

    .line 382
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ScrollViewWithMaxHeight;

    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 383
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702f1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x3

    .line 384
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;->setMaxHeight(I)V

    .line 385
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p2

    if-ge p2, v2, :cond_2

    .line 386
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$11;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$11;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 393
    :cond_2
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$12;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$12;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 403
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$13;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$13;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f09067f

    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 421
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->sendRequest()V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 571
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method
