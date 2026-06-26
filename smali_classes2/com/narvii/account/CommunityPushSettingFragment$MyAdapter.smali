.class Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "CommunityPushSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/CommunityPushSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/CommunityPushSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 306
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private sendPushStatusRequest()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {v0}, Lcom/narvii/account/CommunityPushSettingFragment;->access$100(Lcom/narvii/account/CommunityPushSettingFragment;)I

    .line 412
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget v1, v1, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 413
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile/push"

    .line 414
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 415
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 416
    new-instance v2, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;

    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v1, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v2, 0x7f0f0e4b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 319
    invoke-static {v1}, Lcom/narvii/account/CommunityPushSettingFragment;->access$200(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 320
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v2, 0x7f0f00ee

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v1, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v1, v1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    const v2, 0x7f0f0e49

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v2, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    iput-boolean v2, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const v2, 0x7f0f0e4a

    .line 327
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {v0}, Lcom/narvii/account/CommunityPushSettingFragment;->access$200(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 329
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v0, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    iput-boolean v0, v1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 330
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const v2, 0x7f0f0e4c

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const v2, 0x7f0f0e4d

    .line 334
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 336
    invoke-static {v1}, Lcom/narvii/account/CommunityPushSettingFragment;->access$200(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 337
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 345
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 346
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 347
    instance-of p2, v0, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz p2, :cond_2

    .line 348
    move-object p2, v0

    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    const p3, 0x7f09074b

    .line 349
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    .line 351
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 352
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 353
    invoke-virtual {p3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const p3, 0x7f090341

    .line 356
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 358
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 359
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 360
    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const p3, 0x7f090213

    .line 362
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    if-eqz p3, :cond_2

    .line 364
    iget-boolean v1, p2, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 366
    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    new-instance p2, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

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

    .line 386
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 387
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->sendPushStatusRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 381
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

    .line 404
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 405
    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->sendPushStatusRequest()V

    .line 407
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
