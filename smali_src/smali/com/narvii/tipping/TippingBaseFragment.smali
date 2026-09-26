.class public abstract Lcom/narvii/tipping/TippingBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;,
        Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getCommunityThemeColor()I
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0600a1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method private synthetic lambda$onCreate$0(Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment;->lambda$onCreate$0(Lcom/narvii/model/Community;)V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "isAuthor"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;-><init>(Lcom/narvii/tipping/TippingBaseFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;-><init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 27
    .line 28
    :cond_0
    new-instance p1, Lcom/narvii/tipping/TippingBaseFragment$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, p0}, Lcom/narvii/tipping/TippingBaseFragment$1;-><init>(Lcom/narvii/tipping/TippingBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->listAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    :cond_1
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "props_giver_list"

    return-object v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 15
    .line 16
    instance-of v2, v1, Lcom/narvii/model/Blog;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/Blog;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    .line 24
    move-result v0

    .line 25
    :cond_0
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->titleId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 11
    .line 12
    const-string p1, "account"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    const-string p1, "community"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "objectClass"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Class;

    .line 47
    .line 48
    if-eqz v0, :cond_9

    .line 49
    .line 50
    :try_start_0
    const-class v1, Lcom/narvii/model/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    const-string v2, "object"

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/Tippable;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    instance-of v1, v0, Lcom/narvii/model/Tippable;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/model/Tippable;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 91
    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 96
    return-void

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    const-class v0, Lcom/narvii/model/Community;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lcom/narvii/model/Community;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 113
    .line 114
    instance-of v1, p1, Lcom/narvii/model/NVObject;

    .line 115
    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 127
    .line 128
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    .line 135
    .line 136
    :cond_3
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 137
    .line 138
    instance-of v1, p1, Lcom/narvii/model/Feed;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    check-cast p1, Lcom/narvii/model/Feed;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    iput-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 149
    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    iput-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 157
    .line 158
    .line 159
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 160
    move-result p1

    .line 161
    .line 162
    iput p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundColor:I

    .line 163
    goto :goto_1

    .line 164
    .line 165
    :cond_5
    instance-of v1, p1, Lcom/narvii/model/ChatThread;

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 176
    .line 177
    if-nez p1, :cond_6

    .line 178
    .line 179
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 180
    .line 181
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    new-instance p1, Lcom/narvii/model/Media;

    .line 188
    .line 189
    .line 190
    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    .line 191
    .line 192
    iget-object v1, p0, Lcom/narvii/tipping/TippingBaseFragment;->tippable:Lcom/narvii/model/Tippable;

    .line 193
    .line 194
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 201
    .line 202
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 203
    .line 204
    if-nez p1, :cond_8

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    .line 210
    move-result v1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1}, Lcom/narvii/community/CommunityService;->getLiteCommunity(I)Lcom/narvii/model/Community;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 217
    .line 218
    if-nez p1, :cond_7

    .line 219
    .line 220
    const-string p1, "__community"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    check-cast p1, Lcom/narvii/model/Community;

    .line 231
    .line 232
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 233
    .line 234
    :cond_7
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->community:Lcom/narvii/model/Community;

    .line 235
    .line 236
    if-nez p1, :cond_8

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getPublishNdcId()I

    .line 242
    move-result v0

    .line 243
    .line 244
    new-instance v1, Lcom/narvii/tipping/b;

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, p0}, Lcom/narvii/tipping/b;-><init>(Lcom/narvii/tipping/TippingBaseFragment;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/CommunityService;->fetchLiteCommunity(ILcom/narvii/util/Callback;)V

    .line 251
    .line 252
    :cond_8
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 253
    .line 254
    .line 255
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 256
    .line 257
    new-instance v0, Landroid/os/Bundle;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .line 262
    const-string v1, "Source"

    .line 263
    .line 264
    const-string v2, "Props Givers"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    const-string v1, "chatInvite"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 288
    return-void

    .line 289
    .line 290
    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 292
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d074e

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

.method protected onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment;->footerAdapter:Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-object p1, v0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 12
    .line 13
    iput-object p2, v0, Lcom/narvii/tipping/TippingBaseFragment$TippingListFooterAdatper;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0192

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/widget/FullscreenBackgroundView;->showBlurOverlay()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundMedia:Lcom/narvii/model/Media;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundMedia(Lcom/narvii/model/Media;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundColor:I

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/tipping/TippingBaseFragment;->getCommunityThemeColor()I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    :goto_0
    return-void
.end method

.method protected abstract titleId()I
.end method
