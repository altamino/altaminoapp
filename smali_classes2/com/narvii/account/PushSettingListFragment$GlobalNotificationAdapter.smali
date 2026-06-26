.class Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "PushSettingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/PushSettingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalNotificationAdapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/PushSettingListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 255
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic lambda$getView$0(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 294
    check-cast p0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private sendPushStatusRequest()V
    .locals 4

    .line 328
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile/push"

    .line 330
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 331
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 332
    new-instance v2, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;

    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;-><init>(Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v1, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    const v1, 0x7f0f0731

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    const v1, 0x7f0f0e4b

    iget-object v2, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v3, 0x7f0f0e4e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v2, v1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 264
    invoke-static {v1}, Lcom/narvii/account/PushSettingListFragment;->access$100(Lcom/narvii/account/PushSettingListFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 265
    iget-object v1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const v2, 0x7f0f0733

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 272
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 274
    instance-of p2, v0, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz p2, :cond_2

    .line 275
    move-object p2, v0

    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    const p3, 0x7f09074b

    .line 276
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 280
    invoke-virtual {p3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const p3, 0x7f090341

    .line 283
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 285
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 286
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 287
    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const p3, 0x7f090213

    .line 289
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    if-eqz p3, :cond_2

    .line 291
    iget-boolean v1, p2, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    new-instance p2, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$GlobalNotificationAdapter$ry2MwwVZR-Z5BNJNesQlefNQcv0;

    invoke-direct {p2, v0}, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$GlobalNotificationAdapter$ry2MwwVZR-Z5BNJNesQlefNQcv0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 303
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 304
    invoke-direct {p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->sendPushStatusRequest()V

    return-void
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

    .line 321
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 322
    iput-object p2, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->sendPushStatusRequest()V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
