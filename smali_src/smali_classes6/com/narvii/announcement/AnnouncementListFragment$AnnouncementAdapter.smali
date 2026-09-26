.class public Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/announcement/AnnouncementListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnouncementAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/announcement/AnnouncementListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/announcement/AnnouncementListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;->this$0:Lcom/narvii/announcement/AnnouncementListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p2, "Source"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "Announcement Feed"

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/announcement"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    .line 15
    const-string v0, "language"

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method protected getFeedBlogLayout()I
    .locals 1

    const v0, 0x7f0d0242

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a058c

    .line 8
    const/4 p3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0574

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 18
    return-object p1
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;->this$0:Lcom/narvii/announcement/AnnouncementListFragment;

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Announcement Feed"

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    const-string v0, "isAnnouncement"

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v0, "prefetch"

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object p2
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
