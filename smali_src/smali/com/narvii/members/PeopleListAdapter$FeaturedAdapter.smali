.class Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;
.super Lcom/narvii/members/HorizontalMemberWrappedAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->g(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "/user-profile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo p2, "type"

    .line 14
    .line 15
    const-string p3, "featured"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Featured"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected isSinglePage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "update"

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "featureChanged"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 31
    :cond_0
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
