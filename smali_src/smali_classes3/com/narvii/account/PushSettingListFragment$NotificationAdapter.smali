.class Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/PushSettingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/master/setting/PushSettings;",
        "Lcom/narvii/master/setting/PushSettingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/PushSettingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
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


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "/account/push-settings"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/setting/PushSettings;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/master/setting/PushSettings;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/master/setting/PushSettings;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/master/setting/PushSettings;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/master/setting/PushSettings;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/master/setting/PushSettings;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0456

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a036b

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/master/setting/PushSettings;->icon:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    const p3, 0x7f0a037c

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    check-cast p3, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/master/setting/PushSettings;->name:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-object p2

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/master/setting/PushSettings;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class p1, Lcom/narvii/account/CommunityPushSettingFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p3, Lcom/narvii/master/setting/PushSettings;

    .line 13
    .line 14
    iget p2, p3, Lcom/narvii/master/setting/PushSettings;->id:I

    .line 15
    .line 16
    const-string p4, "community_push_setting_id"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    const-string p2, "community_push_setting_name"

    .line 22
    .line 23
    iget-object p3, p3, Lcom/narvii/master/setting/PushSettings;->name:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string p2, "Source"

    .line 29
    .line 30
    const-string p3, "Settings"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/master/setting/PushSettingResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/master/setting/PushSettingResponse;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
