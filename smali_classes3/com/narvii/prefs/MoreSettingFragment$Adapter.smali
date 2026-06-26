.class final Lcom/narvii/prefs/MoreSettingFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "MoreSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/MoreSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreSettingFragment.kt\ncom/narvii/prefs/MoreSettingFragment$Adapter\n*L\n1#1,369:1\n*E\n"
.end annotation


# instance fields
.field private final ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

.field private final COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

.field private final MEMBERSHIP:Lcom/narvii/util/Tag;

.field private final WALLET:Lcom/narvii/util/Tag;

.field private final ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 145
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "community_profile"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    .line 146
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "account_security"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    .line 147
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "membership"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 148
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "wallet"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getUsers$p(Lcom/narvii/prefs/MoreSettingFragment$Adapter;)Ljava/util/List;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    return-object p0
.end method

.method private final sendCommunityJoinedRequest()V
    .locals 4

    const-string v0, "api"

    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 164
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/joined"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 165
    new-instance v2, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;

    const-class v3, Lcom/narvii/community/MyCommunityListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;-><init>(Lcom/narvii/prefs/MoreSettingFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 187
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    const-string v1, "PrefsAdapter.DIVIDER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f1033

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 196
    const-class v1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 195
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0ae4

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 200
    const-class v1, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 199
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0b18

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 203
    const-class v1, Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0176

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 206
    const-class v1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0e1a

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 219
    const-class v1, Lcom/narvii/prefs/SettingsFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14881
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f11ad

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 14882
    const-class v1, Lcom/narvii/prefs/AminolightSettings;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 14883
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 225
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "cell"

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    const p1, 0x7f0b05a5

    .line 228
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 230
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f0900e9

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    if-eqz p2, :cond_5

    check-cast p2, Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0900ea

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const v1, 0x7f0900eb

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 235
    iget-object p3, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/16 v5, 0x8

    if-lez p3, :cond_0

    .line 236
    iget-object p3, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {p3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :goto_0
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v4, :cond_1

    .line 242
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_1
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    .line 248
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->users:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 233
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_6
    :goto_2
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 256
    :cond_7
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v1, :cond_d

    const p1, 0x7f0b05a4

    .line 257
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getAccount$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 259
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 260
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    const p3, 0x7f090764

    .line 261
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_b

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getSecurityLevel()I

    move-result p2

    if-eq p2, v4, :cond_9

    const/4 p3, 0x3

    if-eq p2, p3, :cond_8

    goto :goto_3

    :cond_8
    const v2, 0x7f0804d5

    goto :goto_3

    :cond_9
    const v2, 0x7f0804d6

    :goto_3
    if-eqz v2, :cond_c

    const p2, 0x7f090028

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_c
    :goto_4
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 274
    :cond_d
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const p1, 0x7f0b05ae

    .line 275
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090a97

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f090562

    .line 277
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 278
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-static {v0}, Lcom/narvii/prefs/MoreSettingFragment;->access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 279
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    const v5, -0x2ffde5

    if-eqz v1, :cond_13

    .line 280
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080083

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "#40000000"

    .line 281
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 282
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    move-result p3

    if-eqz p3, :cond_e

    const p3, 0x7f0f0b82

    .line 283
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, -0xd6296e

    .line 284
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 286
    :cond_e
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    move-result p3

    if-nez p3, :cond_f

    const p3, 0x7f0f0b87

    .line 288
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_f
    if-ne p3, v4, :cond_10

    const p3, 0x7f0f0b88

    .line 289
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_10
    const/16 v0, 0xe

    const-string v1, "tv"

    if-le v4, p3, :cond_11

    goto :goto_5

    :cond_11
    if-lt v0, p3, :cond_12

    .line 290
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    const v1, 0x7f0f0b89

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 291
    :cond_12
    :goto_5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_6
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 296
    :cond_13
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f080082

    goto :goto_7

    :cond_14
    const v4, 0x7f080081

    :goto_7
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {p3, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 298
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result p3

    if-ltz p3, :cond_15

    const p3, 0x7f0f0b83

    .line 300
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 301
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_15
    const p3, 0x7f0f0b8b

    .line 303
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, -0x818182

    .line 304
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    :cond_16
    :goto_8
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 310
    :cond_17
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const p1, 0x7f0b05b6

    .line 311
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-static {p2}, Lcom/narvii/prefs/MoreSettingFragment;->access$getMemberShip$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p2

    if-eqz p2, :cond_19

    const p3, 0x7f090118

    .line 313
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_18

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result p2

    invoke-static {p2}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_18
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_19
    :goto_9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 317
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "super.getView(position, convertView, parent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    const-string v1, "Settings"

    const-string v2, "Source"

    const/4 v3, 0x1

    if-ne p3, v0, :cond_0

    .line 324
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 325
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_1

    .line 330
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 331
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->ACCOUNT_SECURITY:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    const-class p1, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->COMMUNITY_PROFILES:Lcom/narvii/util/Tag;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    const-class p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 343
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 158
    invoke-direct {p0}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->sendCommunityJoinedRequest()V

    .line 159
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
