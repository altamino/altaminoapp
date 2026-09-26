.class public Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InviteHistoryAdapter"
.end annotation


# instance fields
.field cid:I

.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/invite/InviteHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteHistoryFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->this$0:Lcom/narvii/invite/InviteHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->cid:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 18
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
    iget v0, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->cid:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "community/invitation/logs"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/invite/InvitationLog;

    return-object v0
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
    check-cast p1, Lcom/narvii/invite/InvitationLog;

    .line 3
    .line 4
    sget v0, Lcom/narvii/lib/R$layout;->invited_user:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    iget-object p3, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->avatar:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 28
    .line 29
    sget p3, Lcom/narvii/lib/R$id;->nickname:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    sget p3, Lcom/narvii/lib/R$id;->jointime:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    check-cast p3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/invite/InvitationLog;->createdTime:Ljava/util/Date;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->memberSinceDate(Ljava/util/Date;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-object p2
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/invite/InvitationLogListResponse;

    return-object v0
.end method
