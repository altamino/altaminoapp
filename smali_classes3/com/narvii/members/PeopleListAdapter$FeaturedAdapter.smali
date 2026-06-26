.class Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;
.super Lcom/narvii/members/HorizontalMemberWrappedAdapter;
.source "PeopleListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeaturedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 173
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 183
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "/user-profile"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "type"

    const-string p3, "featured"

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Featured"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public isListShown()Z
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method protected isSinglePage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 213
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_0

    .line 214
    iget-object p1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "featureChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
