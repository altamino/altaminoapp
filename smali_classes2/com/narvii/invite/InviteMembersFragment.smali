.class public Lcom/narvii/invite/InviteMembersFragment;
.super Lcom/narvii/list/NVListFragment;
.source "InviteMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;,
        Lcom/narvii/invite/InviteMembersFragment$Adapter;
    }
.end annotation


# static fields
.field public static final SECOND_DAY:I = 0x15180

.field public static final SECOND_HOUR:I = 0xe10

.field public static final SECOND_MINUTE:I = 0x3c


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field public countDownTimer:Landroid/os/CountDownTimer;

.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field durtationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

.field inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

.field private isLeader:Z

.field linkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private themeColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/invite/InviteMembersFragment;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/narvii/invite/InviteMembersFragment;->isLeader:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/invite/InviteMembersFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/narvii/invite/InviteMembersFragment;->themeColor:I

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 95
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    new-instance v0, Lcom/narvii/invite/InviteMembersFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;-><init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 97
    new-instance v0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;-><init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V

    .line 98
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteAdadpter:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 106
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget v0, Lcom/narvii/lib/R$string;->invite_members:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "account"

    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 109
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/invite/InviteMembersFragment;->isLeader:Z

    .line 110
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 111
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 112
    new-instance v0, Lcom/narvii/invite/InviteFriendHelper;

    invoke-direct {v0}, Lcom/narvii/invite/InviteFriendHelper;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

    .line 113
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->never:I

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    const v3, 0x3f480

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    const v3, 0x15180

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->datetime_one_day:I

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    const v3, 0xa8c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->datetime_n_hours:I

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    const/16 v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->datetime_one_hour:I

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    const/16 v3, 0x708

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->datetime_n_minutes:I

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "config"

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 121
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    iput v0, p0, Lcom/narvii/invite/InviteMembersFragment;->themeColor:I

    .line 122
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 138
    check-cast p1, Lcom/narvii/widget/NVListView;

    const p2, -0xc0a01

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 139
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    return-void
.end method
