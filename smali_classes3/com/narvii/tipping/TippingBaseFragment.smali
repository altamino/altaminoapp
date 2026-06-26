.class public abstract Lcom/narvii/tipping/TippingBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "TippingBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;,
        Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;
    }
.end annotation


# instance fields
.field protected accountService:Lcom/narvii/account/AccountService;

.field protected apiTypeName:Ljava/lang/String;

.field protected backgroundColor:I

.field protected backgroundMedia:Lcom/narvii/model/Media;

.field private backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

.field protected community:Lcom/narvii/model/Community;

.field protected communityService:Lcom/narvii/community/CommunityService;

.field protected footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

.field protected listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

.field protected objectId:Ljava/lang/String;

.field protected tippable:Lcom/narvii/model/Tippable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method private getCommunityThemeColor()I
    .locals 2

    const-string v0, "config"

    .line 220
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    return v0

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06007d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 178
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isAuthor"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 202
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;-><init>(Lcom/narvii/tipping/TippingBaseFragment;)V

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 203
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;-><init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;)V

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 206
    :cond_0
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/tipping/TippingBaseFragment$1;-><init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 212
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "PropsGiverList"

    return-object v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v1, :cond_1

    .line 259
    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    .line 261
    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected abstract isAuthor()Z
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportGlobal()Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public synthetic lambda$onCreate$0$TippingBaseFragment(Lcom/narvii/model/Community;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 155
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->titleId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "account"

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "community"

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 97
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "objectClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_9

    .line 100
    :try_start_0
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "object"

    if-ne v0, v1, :cond_0

    .line 101
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Tippable;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/narvii/model/Tippable;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/narvii/model/Tippable;

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 123
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 125
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v0, p1, Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_3

    .line 126
    check-cast p1, Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    check-cast p1, Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    instance-of v0, p1, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_5

    .line 132
    check-cast p1, Lcom/narvii/model/Feed;

    .line 133
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 134
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    if-nez v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 137
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result p1

    iput p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundColor:I

    goto :goto_1

    .line 138
    :cond_5
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_6

    .line 139
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 140
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    check-cast p1, Lcom/narvii/model/ChatThread;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 141
    new-instance p1, Lcom/narvii/model/Media;

    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 147
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityService;->getLiteCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 149
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_7

    const-string p1, "__community"

    .line 150
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 152
    :cond_7
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_8

    .line 153
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    move-result v0

    new-instance v1, Lcom/narvii/tipping/-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI;

    invoke-direct {v1, p0}, Lcom/narvii/tipping/-$$Lambda$TippingBaseFragment$KSe4hU-R2IuOriFwhdk8EKf-3sI;-><init>(Lcom/narvii/tipping/TippingBaseFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/CommunityService;->fetchLiteCommunity(ILcom/narvii/util/Callback;)V

    .line 162
    :cond_8
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    const-string v2, "Props Givers"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    .line 114
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0697

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    if-eqz v0, :cond_1

    .line 251
    iput-object p1, v0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 252
    iput-object p2, v0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 253
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090103

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 190
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    invoke-virtual {p1}, Lcom/narvii/widget/FullscreenBackgroundView;->showBlurOverlay()V

    .line 191
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    .line 192
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundMedia(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundColor:I

    if-eqz p1, :cond_1

    .line 194
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getCommunityThemeColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method protected abstract titleId()I
.end method
