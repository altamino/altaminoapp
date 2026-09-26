.class public Lcom/narvii/user/title/EditUserTitleFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 18
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->goToAllTagListPage()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->goToSearchResultPage(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom()V

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->sendRequest()V

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->submitTitles()V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment;->updateCountView(Ljava/util/List;)V

    return-void
.end method

.method private anyChanges()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isTagListChanged()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private canSubmitEnable()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextBeyondLimit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isEditTextEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->isTagListChanged()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private changeSubmitStatus()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->canSubmitEnable()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method private goToAllTagListPage()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    const v1, 0x7f120128

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    :cond_1
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 33
    .line 34
    iget v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120be9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    :cond_1
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    return-void
.end method

.method private isEditTextBeyondLimit()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v0

    .line 25
    .line 26
    const/16 v1, 0x14

    .line 27
    .line 28
    if-le v0, v1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private isEditTextEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0
.end method

.method private isTagListChanged()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    :goto_0
    xor-int/2addr v0, v1

    .line 29
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleHashSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->animation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/user/title/EditUserTitleFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->limitAlertView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/user/title/EditUserTitleFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchTask:Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/AddUserTitleFlowLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    return-object p0
.end method

.method private scrollToBottom()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->scrollToBottom(Landroid/view/ViewGroup;)V

    .line 21
    :goto_0
    return-void
.end method

.method private sendRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/NVStatusLayout;->showLoading()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$14;

    .line 10
    .line 11
    const-class v2, Lcom/narvii/user/title/CommunityUseTitleListResponse;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lcom/narvii/user/title/EditUserTitleFragment$14;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/user/title/UserTitleRepository;->getAllUserTitleList(Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiRequest;

    .line 18
    return-void
.end method

.method private submitTitles()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->getEditText()Landroid/widget/EditText;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/model/api/UserTitle;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v1}, Lcom/narvii/model/api/UserTitle;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    :cond_1
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    new-instance v4, Lcom/narvii/user/title/EditUserTitleFragment$2;

    .line 86
    .line 87
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, p0, v5, v0, v1}, Lcom/narvii/user/title/EditUserTitleFragment$2;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3, v0, v4}, Lcom/narvii/user/title/UserTitleRepository;->adminUserTitleList(Ljava/lang/String;Ljava/util/List;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 94
    :cond_2
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/widget/NVStatusLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    return-object p0
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 v1, 0x14

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 55
    const/4 v2, -0x1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    move-result p1

    .line 63
    .line 64
    const/16 v2, 0x21

    .line 65
    const/4 v3, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v3, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleHashSet:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/user/title/EditUserTitleFragment;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->searchTask:Lcom/narvii/user/title/EditUserTitleFragment$SearchTitleTask;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitlesAdapter:Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->changeSubmitStatus()V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0079

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0803b5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    instance-of p1, p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0d071e

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a0df8

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iput-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$1;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submitButton:Landroid/view/View;

    .line 85
    const/4 v0, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x6d

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-string/jumbo p1, "userTitle"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/narvii/model/api/UserTitle;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->updateUserTitle(Lcom/narvii/model/api/UserTitle;)V

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->anyChanges()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f1203fe

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$3;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$3;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;Lcom/narvii/app/NVActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 34
    return v2

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f12044d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "config"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    .line 24
    .line 25
    .line 26
    const-string/jumbo p1, "user"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-class v0, Lcom/narvii/model/User;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/model/User;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_0
    new-instance p1, Lcom/narvii/user/title/UserTitleRepository;

    .line 49
    .line 50
    iget v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->cid:I

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p0, v0}, Lcom/narvii/user/title/UserTitleRepository;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->userTitleRepository:Lcom/narvii/user/title/UserTitleRepository;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/model/User;->customTitles()Ljava/util/List;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    const/16 v0, 0x30

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    .line 3
    const p3, 0x7f0d02c8

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0192

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0a0221

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/BubbleBackground;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/model/User;->getSlideShowMedias()Ljava/util/ArrayList;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/model/Media;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p2}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 81
    .line 82
    :goto_0
    new-instance p2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;

    .line 83
    const/4 v0, 0x1

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    const v2, 0x7f0a0bfb

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    .line 106
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    .line 121
    const v1, 0x7f0a0c8b

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    check-cast p2, Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$4;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$4;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v1}, Lcom/narvii/widget/ScrollDetectFrameLayout;->setScrollDetectListener(Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    const v1, 0x7f0a0f60

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    check-cast p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 149
    .line 150
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 151
    .line 152
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$5;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$5;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setTagEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$TagEditListener;)V

    .line 159
    .line 160
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 161
    .line 162
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$6;

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$6;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setUserTitleTransformer(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleTransformer;)V

    .line 169
    .line 170
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 171
    .line 172
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$7;

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$7;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setUserTitleColorEditListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;)V

    .line 179
    .line 180
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 181
    .line 182
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$8;

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$8;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setOnTagRemovedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;)V

    .line 189
    .line 190
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 191
    .line 192
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$9;

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$9;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->setOnSelectedChangedListener(Lcom/narvii/user/title/AddUserTitleFlowLayout$onSelectedChangedListener;)V

    .line 199
    .line 200
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->selectedTitleFlowLayout:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->addUserTitleList(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    const v1, 0x7f0a0d9c

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    check-cast p2, Lcom/narvii/widget/NVStatusLayout;

    .line 219
    .line 220
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->statusLayout:Lcom/narvii/widget/NVStatusLayout;

    .line 221
    .line 222
    new-instance v1, Lcom/narvii/user/title/EditUserTitleFragment$10;

    .line 223
    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/narvii/user/title/EditUserTitleFragment$10;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVStatusLayout;->setOnErrorRetryListener(Lcom/narvii/widget/NVStatusLayout$onErrorRetryListener;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 232
    move-result-object p2

    .line 233
    .line 234
    .line 235
    const v1, 0x7f0a07e3

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object p2

    .line 240
    .line 241
    check-cast p2, Landroid/widget/TextView;

    .line 242
    .line 243
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->limitAlertView:Landroid/widget/TextView;

    .line 244
    .line 245
    new-array v0, v0, [Ljava/lang/Object;

    .line 246
    .line 247
    const/16 v1, 0x14

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    aput-object v2, v0, v4

    .line 254
    .line 255
    .line 256
    const v2, 0x7f12124c

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 267
    move-result-object p2

    .line 268
    .line 269
    .line 270
    const v0, 0x7f0a0cd3

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    move-result-object p2

    .line 275
    .line 276
    check-cast p2, Landroid/widget/TextView;

    .line 277
    .line 278
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->countView:Landroid/widget/TextView;

    .line 279
    .line 280
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, p2}, Lcom/narvii/user/title/EditUserTitleFragment;->updateCountView(Ljava/util/List;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 287
    move-result-object p2

    .line 288
    .line 289
    .line 290
    const v0, 0x7f0a0171

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object p2

    .line 295
    .line 296
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 297
    .line 298
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    const p2, 0x7f0a0c8c

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    move-result-object p2

    .line 311
    .line 312
    check-cast p2, Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 313
    .line 314
    iput-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 318
    move-result-object p2

    .line 319
    .line 320
    .line 321
    const v0, 0x7f070534

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 325
    move-result p2

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 329
    move-result-object v0

    .line 330
    .line 331
    .line 332
    const v2, 0x7f070535

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 336
    move-result v0

    .line 337
    .line 338
    mul-int/lit8 v0, v0, 0x2

    .line 339
    add-int/2addr p2, v0

    .line 340
    .line 341
    mul-int/lit8 p2, p2, 0x3

    .line 342
    .line 343
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;->setMaxHeight(I)V

    .line 347
    .line 348
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->submittedTitleList:Ljava/util/List;

    .line 349
    .line 350
    .line 351
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 352
    move-result p2

    .line 353
    .line 354
    if-ge p2, v1, :cond_2

    .line 355
    .line 356
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 357
    .line 358
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$11;

    .line 359
    .line 360
    .line 361
    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$11;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 365
    .line 366
    :cond_2
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 367
    .line 368
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$12;

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$12;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 375
    .line 376
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 377
    .line 378
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$13;

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, p0}, Lcom/narvii/user/title/EditUserTitleFragment$13;-><init>(Lcom/narvii/user/title/EditUserTitleFragment;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    .line 386
    .line 387
    const p2, 0x7f0a0805

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 391
    move-result-object p1

    .line 392
    .line 393
    check-cast p1, Landroid/widget/TextView;

    .line 394
    .line 395
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment;->title:Landroid/widget/TextView;

    .line 396
    .line 397
    .line 398
    invoke-direct {p0}, Lcom/narvii/user/title/EditUserTitleFragment;->sendRequest()V

    .line 399
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    return-void
.end method
