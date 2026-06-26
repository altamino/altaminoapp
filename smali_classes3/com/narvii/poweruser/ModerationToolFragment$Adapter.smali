.class Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "ModerationToolFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/ModerationToolFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ModerationToolFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 121
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "config"

    .line 127
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 128
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 129
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/model/User;->isLeader()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0b10

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 136
    const-class v6, Lcom/narvii/flag/FlagListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 137
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f01b4

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 141
    const-class v6, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 142
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedChatThreadEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f06af

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 149
    const-class v6, Lcom/narvii/poweruser/FeaturedPublicChatListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 150
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    .line 153
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 154
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0ed9

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 157
    const-class v6, Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 158
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    .line 161
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 162
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0ed8

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 164
    const-class v6, Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 165
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_7

    .line 169
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 171
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f03a1

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 172
    const-class v6, Lcom/narvii/poweruser/DisabledFeedFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 173
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v2, :cond_8

    .line 176
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0bab

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 178
    const-class v6, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 179
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_9

    .line 182
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 183
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f03a3

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 184
    const-class v6, Lcom/narvii/poweruser/DisabledPublicChatListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 185
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v2, :cond_a

    .line 188
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 189
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f015f

    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 190
    const-class v6, Lcom/narvii/poweruser/BannedMemberListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 191
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v2, :cond_b

    .line 194
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "sharedFolder"

    invoke-virtual {v1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isModuleEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v4, 0x7f0f03a0

    invoke-direct {v0, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 196
    const-class v4, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;

    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 197
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 200
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 201
    new-instance v0, Lcom/narvii/list/prefs/PrefsBadge;

    const v2, 0x7f0f0fe3

    iget-object v3, p0, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    invoke-static {v3}, Lcom/narvii/poweruser/ModerationToolFragment;->access$100(Lcom/narvii/poweruser/ModerationToolFragment;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/narvii/list/prefs/PrefsBadge;-><init>(II)V

    .line 202
    const-class v2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v5, :cond_d

    .line 206
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0e9f

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 208
    const-class v1, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 209
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method
