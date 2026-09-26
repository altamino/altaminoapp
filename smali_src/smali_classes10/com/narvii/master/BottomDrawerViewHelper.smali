.class public Lcom/narvii/master/BottomDrawerViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/BottomDrawerContainer$DismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;,
        Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;
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

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/BottomDrawerViewHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/BottomDrawerViewHelper$1;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/community/search/MasterThemeHelper;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    .line 27
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/master/BottomDrawerViewHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/master/BottomDrawerViewHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->showSearchCommunityList()V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/master/BottomDrawerViewHelper;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/master/BottomDrawerViewHelper;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSearchCommunityList()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 17
    .line 18
    const-class v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "section_type"

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "Toast"

    .line 31
    .line 32
    const-string v3, "Source"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    new-array v1, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const v2, -0x22f3e8d6

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    aput-object v2, v1, v4

    .line 48
    .line 49
    const-string v2, "#%06X"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "overlayBackground"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const-string v1, "showMyCommunity"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    .line 65
    const-string v1, "toast"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->safedk_BottomDrawerViewHelper_startActivity_92a7575b9066f87924165e05b4fd6fca(Lcom/narvii/master/BottomDrawerViewHelper;Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    const v1, 0x7f010059

    .line 85
    .line 86
    .line 87
    const v2, 0x7f01005e

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 91
    :cond_1
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public addBottomView(I)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    return-object v1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    return-object v1

    .line 33
    .line 34
    .line 35
    :cond_2
    const v2, 0x7f0a046c

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Lcom/narvii/widget/BottomDrawerContainer;

    .line 42
    .line 43
    iput-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 44
    .line 45
    .line 46
    const v3, 0x7f0a07b8

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    .line 57
    const v3, 0x1020002

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    check-cast v3, Landroid/view/ViewGroup;

    .line 64
    .line 65
    :cond_3
    if-nez v3, :cond_4

    .line 66
    .line 67
    const-string p1, "bottom drawer"

    .line 68
    .line 69
    const-string v0, "cannot find view attached to"

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v1

    .line 74
    .line 75
    :cond_4
    iget-object v4, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 76
    .line 77
    if-nez v4, :cond_5

    .line 78
    .line 79
    iget-object v4, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    const v5, 0x7f0d007c

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/widget/BottomDrawerContainer;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 102
    .line 103
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Lcom/narvii/widget/BottomDrawerContainer;->setDismissListener(Lcom/narvii/widget/BottomDrawerContainer$DismissListener;)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 114
    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    const/4 v1, -0x2

    .line 117
    const/4 v2, -0x1

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    const/16 v1, 0x50

    .line 123
    .line 124
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    .line 126
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    const v3, 0x7f070098

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    move-result v1

    .line 142
    float-to-int v1, v1

    .line 143
    .line 144
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 147
    .line 148
    .line 149
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    iget-object v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 157
    const/4 v4, 0x0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-object p1

    .line 168
    :cond_6
    return-object v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getBottomContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    return-object v0
.end method

.method public hideBottomLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    .line 16
    :cond_0
    return-void
.end method

.method public hideBottomLayoutWithAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f01005e

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 28
    const/4 v0, 0x4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    .line 39
    :cond_0
    return-void
.end method

.method public logSuggestLaunch()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageViewLaunch:Lcom/narvii/logging/ActSemantic;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "AminoSuggestPopup"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 49
    :cond_0
    return-void
.end method

.method public logSuggestQuit()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageViewQuit:Lcom/narvii/logging/ActSemantic;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "AminoSuggestPopup"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-wide v3, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    .line 41
    sub-long/2addr v1, v3

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "duration"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 55
    return-void
.end method

.method protected noticeEntryClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/notice/NoticeListFragment;

    return-object v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestLaunch()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestQuit()V

    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;->onDismiss()V

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestQuit()V

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    .line 39
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    .line 43
    return-void
.end method

.method protected preProcessNoticeEntryIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->bottomDismissListener:Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;

    return-void
.end method

.method public setDismissTThreshold(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/BottomDrawerContainer;->setDismissThreshold(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f010059

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 30
    :cond_0
    return-void
.end method

.method public showImportNotice()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d001f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->addBottomView(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    const-string v2, "account"

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->noticeProfileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    const v2, 0x7f070096

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    .line 51
    const/high16 v2, 0x40800000    # 4.0f

    .line 52
    div-float/2addr v1, v2

    .line 53
    float-to-int v1, v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->setDismissTThreshold(I)V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a0661

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    new-instance v2, Lcom/narvii/master/BottomDrawerViewHelper$2;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/narvii/master/BottomDrawerViewHelper$2;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$3;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$3;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/narvii/master/BottomDrawerViewHelper;->showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$4;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$4;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d007d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/master/BottomDrawerViewHelper;->addBottomView(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    const v1, 0x7f0a0e0b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$5;

    .line 41
    .line 42
    const-class v2, Lcom/narvii/model/Community;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0, v2}, Lcom/narvii/master/BottomDrawerViewHelper$5;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/lang/Class;)V

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    move-result-wide v1

    .line 57
    .line 58
    iput-wide v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->lastShowTime:J

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->pvId:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/master/BottomDrawerViewHelper$6;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/narvii/master/BottomDrawerViewHelper$6;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper$SuggestedCommunityAdapter;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;Ljava/util/List;)V

    .line 84
    .line 85
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$7;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$7;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    .line 98
    .line 99
    const p1, 0x7f0a0c96

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    const v1, 0x7f0a0661

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/master/BottomDrawerViewHelper$8;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$8;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$9;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$9;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    new-instance p1, Lcom/narvii/master/BottomDrawerViewHelper$10;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper$10;-><init>(Lcom/narvii/master/BottomDrawerViewHelper;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->showBottomLayout(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    const/4 p1, 0x1

    .line 136
    .line 137
    iput-boolean p1, p0, Lcom/narvii/master/BottomDrawerViewHelper;->suggestedShowing:Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/master/BottomDrawerViewHelper;->logSuggestLaunch()V

    .line 141
    return-void
.end method
