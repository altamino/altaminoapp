.class public Lcom/narvii/master/BottomDrawerViewHelper;
.super Ljava/lang/Object;
.source "BottomDrawerViewHelper.java"

# interfaces
.implements Lcom/narvii/widget/BottomDrawerContainer$DismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;,
        Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;
    }
.end annotation


# instance fields
.field bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

.field drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

.field private lastShowTime:J

.field masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

.field noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field nvContext:Lcom/narvii/app/NVContext;

.field private pvId:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

.field suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/ImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedShowing:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/narvii/master/BottomDrawerViewHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/BottomDrawerViewHelper$1;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 64
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 65
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 66
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/master/BottomDrawerViewHelper;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/BottomDrawerViewHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->showSearchCommunityList()V

    return-void
.end method

.method private showSearchCommunityList()V
    .locals 5

    .line 442
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 446
    const-class v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "section_type"

    .line 447
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Source"

    const-string v3, "Toast"

    .line 449
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v1, v1, [Ljava/lang/Object;

    const v3, -0x22f3e8d6

    .line 450
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "#%06X"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "overlayBackground"

    .line 451
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showMyCommunity"

    .line 452
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "toast"

    .line 453
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->startActivity(Landroid/content/Intent;)V

    .line 455
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01003b

    const v2, 0x7f010040

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public addBottomView(I)Landroid/view/View;
    .locals 6

    .line 142
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 151
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const v2, 0x7f09037d

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/BottomDrawerContainer;

    iput-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    const v3, 0x7f090637

    .line 159
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    const v3, 0x1020002

    .line 161
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_3
    if-nez v3, :cond_4

    const-string p1, "bottom drawer"

    const-string v0, "cannot find view attached to"

    .line 164
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-nez v4, :cond_5

    .line 168
    iget-object v4, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0066

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BottomDrawerContainer;

    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz v0, :cond_6

    .line 173
    invoke-virtual {v0, p0}, Lcom/narvii/widget/BottomDrawerContainer;->setDismissListener(Lcom/narvii/widget/BottomDrawerContainer$DismissListener;)V

    .line 174
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 175
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 177
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07005e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 179
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_6
    return-object v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 298
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomContainer()Landroid/view/View;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    return-object v0
.end method

.method public hideBottomLayout()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public hideBottomLayoutWithAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public logSuggestLaunch()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageViewLaunch:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "AminoSuggestPopup"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 119
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1, v0, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    :cond_0
    return-void
.end method

.method public logSuggestQuit()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageViewQuit:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "AminoSuggestPopup"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected noticeEntryClass()Ljava/lang/Class;
    .locals 1

    .line 277
    const-class v0, Lcom/narvii/notice/NoticeListFragment;

    return-object v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestLaunch()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestQuit()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 101
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestQuit()V

    :cond_2
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    return-void
.end method

.method protected preProcessNoticeEntryIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    return-void
.end method

.method public setDismissTThreshold(I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->setDismissThreshold(I)V

    :cond_0
    return-void
.end method

.method public showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showImportNotice()V
    .locals 3

    const v0, 0x7f0b001f

    .line 231
    invoke-virtual {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->addBottomView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 237
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v1, v2}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->setDismissTThreshold(I)V

    const v1, 0x7f09050b

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    new-instance v2, Lcom/narvii/master/BottomDrawerViewHelper$2;

    invoke-direct {v2, p0}, Lcom/narvii/master/BottomDrawerViewHelper$2;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$3;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {p0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$4;

    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$4;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showSuggestCommunity(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0b0067

    .line 307
    invoke-virtual {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->addBottomView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090b28

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 313
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 314
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 315
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$5;

    const-class v2, Lcom/narvii/model/Community;

    invoke-direct {v1, p0, v2}, Lcom/narvii/master/BottomDrawerViewHelper$5;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 325
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    .line 328
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/narvii/master/BottomDrawerViewHelper$6;

    invoke-direct {v2, p0}, Lcom/narvii/master/BottomDrawerViewHelper$6;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 338
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/util/List;)V

    .line 339
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$7;

    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$7;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 345
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0909ce

    .line 347
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09050b

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$8;

    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$8;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$9;

    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$9;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$10;

    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$10;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    invoke-virtual {p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    .line 385
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestLaunch()V

    return-void
.end method
