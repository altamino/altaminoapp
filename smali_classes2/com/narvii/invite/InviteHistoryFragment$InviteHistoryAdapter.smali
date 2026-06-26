.class public Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "InviteHistoryFragment.java"


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

    .line 46
    iput-object p1, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->this$0:Lcom/narvii/invite/InviteHistoryFragment;

    .line 47
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    iput p3, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->cid:I

    .line 49
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 65
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "community/invitation/logs"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 55
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

    .line 86
    check-cast p1, Lcom/narvii/invite/InvitationLog;

    .line 87
    sget v0, Lcom/narvii/lib/R$layout;->invited_user:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 88
    iget-object p3, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    if-eqz p3, :cond_0

    .line 89
    sget p3, Lcom/narvii/lib/R$id;->avatar:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    iget-object v0, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 90
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 91
    sget p3, Lcom/narvii/lib/R$id;->nickname:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    iget-object v0, p1, Lcom/narvii/invite/InvitationLog;->userProfile:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget p3, Lcom/narvii/lib/R$id;->jointime:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/invite/InviteHistoryFragment$InviteHistoryAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object p1, p1, Lcom/narvii/invite/InvitationLog;->createdTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->memberSinceDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 60
    const-class v0, Lcom/narvii/invite/InvitationLogListResponse;

    return-object v0
.end method
