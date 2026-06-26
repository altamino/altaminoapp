.class public Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "AnnouncementListFragment.java"


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

    .line 106
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;->this$0:Lcom/narvii/announcement/AnnouncementListFragment;

    .line 107
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "Source"

    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Announcement Feed"

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 151
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/announcement"

    .line 152
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 154
    invoke-static {p0}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 155
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getFeedBlogLayout()I
    .locals 1

    const v0, 0x7f0b0214

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f090455

    .line 126
    invoke-static {p1, p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const p3, 0x7f09043d

    .line 127
    invoke-static {p1, p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-object p1
.end method

.method protected openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;
    .locals 2

    .line 133
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetailIntent(Lcom/narvii/model/Feed;I)Landroid/content/Intent;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementListFragment$AnnouncementAdapter;->this$0:Lcom/narvii/announcement/AnnouncementListFragment;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Announcement Feed"

    .line 138
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "isAnnouncement"

    .line 139
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "prefetch"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    .line 117
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
