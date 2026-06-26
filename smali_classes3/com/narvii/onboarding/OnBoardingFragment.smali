.class public Lcom/narvii/onboarding/OnBoardingFragment;
.super Lcom/narvii/app/NVFragment;
.source "OnBoardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;
    }
.end annotation


# static fields
.field public static final LIKE_FEED:I = 0x8

.field public static final RECOMMEND_FOLLOW:I = 0x4

.field public static final WELCOME_MESSAGE:I = 0x2


# instance fields
.field action:Landroid/widget/TextView;

.field actionLayout:Landroid/view/View;

.field chevron:Landroid/view/View;

.field doneEmoji:Landroid/view/View;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

.field pager:Lcom/narvii/widget/NVViewPager;

.field skip:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/onboarding/OnBoardingFragment;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment;->changeAction(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/onboarding/OnBoardingFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/onboarding/OnBoardingFragment;->goNext()V

    return-void
.end method

.method private changeAction(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/OnBoardingFragment;->resetActionLayout(I)V

    .line 207
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getActionText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getActionBackground(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->skip:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->showSkip(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private goNext()V
    .locals 3

    .line 188
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {v2}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/onboarding/OnBoardingActivity;

    iput-boolean v1, v0, Lcom/narvii/onboarding/OnBoardingActivity;->succeed:Z

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 197
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010029

    const v2, 0x7f01002a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetActionLayout(I)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->chevron:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq p1, v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 216
    :goto_2
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->doneEmoji:Landroid/view/View;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "flags"

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b01a5

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090818

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVViewPager;

    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 83
    iget-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    const p2, 0x7f090a4c

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->skip:Landroid/view/View;

    .line 85
    iget-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->skip:Landroid/view/View;

    new-instance v1, Lcom/narvii/onboarding/OnBoardingFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/onboarding/OnBoardingFragment$1;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09003c

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    const p2, 0x7f09002c

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->action:Landroid/widget/TextView;

    const p2, 0x7f090232

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->chevron:Landroid/view/View;

    const p2, 0x7f09003a

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->doneEmoji:Landroid/view/View;

    .line 98
    new-instance p1, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    .line 99
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/onboarding/OnBoardingFragment;->mOnBoardingAdapter:Lcom/narvii/onboarding/OnBoardingFragment$OnBoardingAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    new-instance p2, Lcom/narvii/onboarding/OnBoardingFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/onboarding/OnBoardingFragment$2;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 116
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->pager:Lcom/narvii/widget/NVViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 117
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/onboarding/OnBoardingFragment;->changeAction(I)V

    .line 118
    iget-object p1, p0, Lcom/narvii/onboarding/OnBoardingFragment;->actionLayout:Landroid/view/View;

    new-instance p2, Lcom/narvii/onboarding/OnBoardingFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/onboarding/OnBoardingFragment$3;-><init>(Lcom/narvii/onboarding/OnBoardingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sendFollowAllRequest()V
    .locals 5

    const-string v0, "account"

    .line 173
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 174
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "targetUidList"

    .line 175
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    const-string v3, "users"

    .line 176
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/narvii/model/User;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 177
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 178
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/joined"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 182
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 183
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 184
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public sendLikeAllFeedsRequest()V
    .locals 4

    .line 159
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x4

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "targetIdList"

    .line 161
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    const-string v2, "feeds"

    .line 162
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v3}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    .line 164
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/feed/vote"

    .line 167
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 168
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 169
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
