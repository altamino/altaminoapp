.class final Lcom/narvii/prefs/MoreSettingFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/MoreSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreSettingFragment.kt\ncom/narvii/prefs/MoreSettingFragment$Adapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,380:1\n1#2:381\n*E\n"
.end annotation


# instance fields
.field private final ACCOUNT_SECURITY:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final COMMUNITY_PROFILES:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final MEMBERSHIP:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final WALLET:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/prefs/MoreSettingFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/Tag;

    .line 15
    .line 16
    const-string p2, "community_profile"

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/util/Tag;

    .line 24
    .line 25
    const-string p2, "account_security"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/util/Tag;

    .line 33
    .line 34
    const-string p2, "membership"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/util/Tag;

    .line 42
    .line 43
    const-string p2, "wallet"

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static final synthetic access$getUsers$p(Lcom/narvii/prefs/MoreSettingFragment$Adapter;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendCommunityJoinedRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "/community/joined"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x5

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    const-string v3, "size"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "start"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    new-instance v2, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;

    .line 55
    .line 56
    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, p0, v3}, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment$Adapter;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 18
    .line 19
    const-string v1, "DIVIDER"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 57
    .line 58
    .line 59
    const v1, 0x7f121144

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 63
    .line 64
    new-instance v1, Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    const-class v3, Lcom/narvii/master/MasterActivity;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .line 75
    const-string v2, "tab"

    .line 76
    .line 77
    const-string v3, "store"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 102
    .line 103
    .line 104
    const v1, 0x7f120bdb

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 108
    .line 109
    const-class v1, Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 121
    .line 122
    .line 123
    const v1, 0x7f1201c1

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 127
    .line 128
    const-class v1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    .line 140
    .line 141
    .line 142
    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 148
    .line 149
    .line 150
    const v1, 0x7f120f45

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 154
    .line 155
    const-class v1, Lcom/narvii/prefs/SettingsFragment;

    .line 156
    .line 157
    .line 158
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0d065c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 33
    move-result p2

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a0176

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const-string p3, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a0177

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0a0178

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 74
    .line 75
    iget-object p3, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 76
    .line 77
    .line 78
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 79
    move-result p3

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    if-lez p3, :cond_0

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 86
    .line 87
    .line 88
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    check-cast p3, Lcom/narvii/model/User;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    :goto_0
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 105
    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 108
    move-result p2

    .line 109
    .line 110
    if-le p2, v3, :cond_1

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    check-cast p2, Lcom/narvii/model/User;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 126
    goto :goto_1

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    :goto_1
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 132
    .line 133
    .line 134
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 135
    move-result p2

    .line 136
    const/4 p3, 0x2

    .line 137
    .line 138
    if-le p2, p3, :cond_2

    .line 139
    .line 140
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    .line 141
    .line 142
    .line 143
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    check-cast p2, Lcom/narvii/model/User;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 154
    goto :goto_2

    .line 155
    .line 156
    .line 157
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 161
    return-object p1

    .line 162
    .line 163
    :cond_4
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    move-result v1

    .line 168
    .line 169
    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    .line 170
    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    .line 174
    const p1, 0x7f0d065b

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 181
    .line 182
    .line 183
    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    if-eqz p2, :cond_7

    .line 187
    .line 188
    iget-object p3, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 192
    move-result v0

    .line 193
    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 198
    .line 199
    .line 200
    const v0, 0x7f0a09f9

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    check-cast v0, Landroid/widget/TextView;

    .line 210
    .line 211
    .line 212
    const v1, 0x7f120026

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 216
    move-result-object p3

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getSecurityLevel()I

    .line 223
    move-result p2

    .line 224
    .line 225
    if-eq p2, v3, :cond_6

    .line 226
    const/4 p3, 0x3

    .line 227
    .line 228
    if-eq p2, p3, :cond_5

    .line 229
    goto :goto_3

    .line 230
    .line 231
    .line 232
    :cond_5
    const v2, 0x7f080603

    .line 233
    goto :goto_3

    .line 234
    .line 235
    .line 236
    :cond_6
    const v2, 0x7f080604

    .line 237
    .line 238
    :goto_3
    if-eqz v2, :cond_7

    .line 239
    .line 240
    .line 241
    const p2, 0x7f0a0056

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    move-result-object p2

    .line 246
    .line 247
    const-string p3, "null cannot be cast to non-null type android.widget.ImageView"

    .line 248
    .line 249
    .line 250
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    check-cast p2, Landroid/widget/ImageView;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 256
    move-result-object p3

    .line 257
    .line 258
    .line 259
    invoke-static {p3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 260
    move-result-object p3

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 267
    return-object p1

    .line 268
    .line 269
    :cond_8
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    move-result v1

    .line 274
    .line 275
    if-eqz v1, :cond_11

    .line 276
    .line 277
    .line 278
    const p1, 0x7f0d0665

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 282
    move-result-object p1

    .line 283
    .line 284
    .line 285
    const p2, 0x7f0a0d90

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object p2

    .line 290
    .line 291
    check-cast p2, Landroid/widget/TextView;

    .line 292
    .line 293
    .line 294
    const p3, 0x7f0a06d5

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    move-result-object p3

    .line 299
    .line 300
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 301
    .line 302
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Lcom/narvii/prefs/MoreSettingFragment;->access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    if-eqz v0, :cond_10

    .line 309
    .line 310
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 314
    move-result v4

    .line 315
    .line 316
    .line 317
    const v5, -0x2ffde5

    .line 318
    .line 319
    if-eqz v4, :cond_d

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 323
    move-result-object v4

    .line 324
    .line 325
    .line 326
    const v6, 0x7f0800b9

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object v4

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, v4}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    .line 335
    const-string v4, "#40000000"

    .line 336
    .line 337
    .line 338
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 339
    move-result v4

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 346
    move-result p3

    .line 347
    .line 348
    if-eqz p3, :cond_9

    .line 349
    .line 350
    .line 351
    const p3, 0x7f120c86

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 355
    .line 356
    .line 357
    const p3, -0xd6296e

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    .line 362
    goto/16 :goto_6

    .line 363
    .line 364
    .line 365
    :cond_9
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    .line 366
    move-result p3

    .line 367
    .line 368
    if-nez p3, :cond_a

    .line 369
    .line 370
    .line 371
    const p3, 0x7f120c8b

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 375
    goto :goto_4

    .line 376
    .line 377
    :cond_a
    if-ne p3, v3, :cond_b

    .line 378
    .line 379
    .line 380
    const p3, 0x7f120c8c

    .line 381
    .line 382
    .line 383
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 384
    goto :goto_4

    .line 385
    .line 386
    :cond_b
    if-gt v3, p3, :cond_c

    .line 387
    .line 388
    const/16 v0, 0xf

    .line 389
    .line 390
    if-ge p3, v0, :cond_c

    .line 391
    .line 392
    new-array v0, v3, [Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object p3

    .line 397
    .line 398
    aput-object p3, v0, v2

    .line 399
    .line 400
    .line 401
    const p3, 0x7f120c8d

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, p3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    move-result-object p3

    .line 406
    .line 407
    .line 408
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    goto :goto_4

    .line 410
    :cond_c
    const/4 p3, 0x0

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    :goto_4
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    goto :goto_6

    .line 418
    .line 419
    .line 420
    :cond_d
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 421
    move-result-object v1

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 425
    move-result v3

    .line 426
    .line 427
    if-eqz v3, :cond_e

    .line 428
    .line 429
    .line 430
    const v3, 0x7f0800b8

    .line 431
    goto :goto_5

    .line 432
    .line 433
    .line 434
    :cond_e
    const v3, 0x7f0800b7

    .line 435
    .line 436
    .line 437
    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 448
    move-result p3

    .line 449
    .line 450
    if-ltz p3, :cond_f

    .line 451
    .line 452
    .line 453
    const p3, 0x7f120c87

    .line 454
    .line 455
    .line 456
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    goto :goto_6

    .line 461
    .line 462
    .line 463
    :cond_f
    const p3, 0x7f120c8f

    .line 464
    .line 465
    .line 466
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 467
    .line 468
    .line 469
    const p3, -0x818182

    .line 470
    .line 471
    .line 472
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    .line 474
    .line 475
    :cond_10
    :goto_6
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 476
    return-object p1

    .line 477
    .line 478
    :cond_11
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 479
    .line 480
    .line 481
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    move-result v0

    .line 483
    .line 484
    if-eqz v0, :cond_13

    .line 485
    .line 486
    .line 487
    const p1, 0x7f0d066d

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 491
    move-result-object p1

    .line 492
    .line 493
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 494
    .line 495
    .line 496
    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 497
    move-result-object p2

    .line 498
    .line 499
    if-eqz p2, :cond_12

    .line 500
    .line 501
    .line 502
    const p3, 0x7f0a01ac

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 506
    move-result-object p3

    .line 507
    .line 508
    .line 509
    invoke-static {p3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    .line 511
    check-cast p3, Landroid/widget/TextView;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 515
    move-result p2

    .line 516
    .line 517
    .line 518
    invoke-static {p2}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    .line 519
    move-result-object p2

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    :cond_12
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 526
    return-object p1

    .line 527
    .line 528
    .line 529
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 530
    move-result-object p1

    .line 531
    .line 532
    const-string p2, "getView(...)"

    .line 533
    .line 534
    .line 535
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "Settings"

    .line 5
    .line 6
    const-string v2, "Source"

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 22
    return v3

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p3, v0, :cond_1

    .line 27
    .line 28
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 39
    return v3

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    .line 42
    .line 43
    .line 44
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-class p1, Lcom/narvii/prefs/AccountSettingFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 57
    return v3

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    .line 60
    .line 61
    .line 62
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const-class p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 75
    return v3

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 79
    move-result p1

    .line 80
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->sendCommunityJoinedRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
