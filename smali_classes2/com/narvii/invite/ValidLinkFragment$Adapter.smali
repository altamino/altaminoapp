.class public Lcom/narvii/invite/ValidLinkFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ValidLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/ValidLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field cid:I

.field public final formatter:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/narvii/invite/ValidLinkFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/ValidLinkFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 55
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 56
    iput p3, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->cid:I

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->formatter:Ljava/text/DateFormat;

    return-void
.end method

.method private revoke(Lcom/narvii/invite/Invitation;)V
    .locals 5

    .line 131
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 133
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 134
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    const-string v4, "__communityId"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "community/invitation/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Lcom/narvii/invite/Invitation;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 136
    new-instance v3, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;

    const-class v4, Lcom/narvii/invite/NewInvitationResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;-><init>(Lcom/narvii/invite/ValidLinkFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/invite/Invitation;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 73
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "community/invitation"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "status"

    const-string v1, "normal"

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 63
    const-class v0, Lcom/narvii/invite/Invitation;

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
    .locals 7

    .line 95
    check-cast p1, Lcom/narvii/invite/Invitation;

    .line 96
    sget v0, Lcom/narvii/lib/R$layout;->item_valid_link:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 97
    sget p3, Lcom/narvii/lib/R$id;->create_by:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    sget v1, Lcom/narvii/lib/R$string;->created_by_placeholder:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/narvii/invite/Invitation;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Lcom/narvii/invite/Invitation;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {p3, v5}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 101
    sget p3, Lcom/narvii/lib/R$id;->link:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 102
    iget-object v0, p1, Lcom/narvii/invite/Invitation;->inviteCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget p3, Lcom/narvii/lib/R$id;->expire:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 105
    new-instance v0, Ljava/util/Date;

    iget-object v1, p1, Lcom/narvii/invite/Invitation;->createdTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget v1, p1, Lcom/narvii/invite/Invitation;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 106
    iget-object v1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    iget-object v1, v1, Lcom/narvii/invite/ValidLinkFragment;->revokedIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/invite/Invitation;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v3, -0x16f2c5

    goto :goto_1

    :cond_2
    const v3, -0x646465

    .line 107
    :goto_1
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    sget v0, Lcom/narvii/lib/R$string;->expired:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    sget v5, Lcom/narvii/lib/R$string;->expire_on:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/invite/Invitation;->duration:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->formatter:Ljava/text/DateFormat;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    sget v0, Lcom/narvii/lib/R$string;->never:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget p1, Lcom/narvii/lib/R$id;->revoke:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    xor-int/lit8 p3, v1, 0x1

    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 112
    sget p1, Lcom/narvii/lib/R$id;->revoke:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 118
    instance-of v0, p3, Lcom/narvii/invite/Invitation;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p3

    check-cast v0, Lcom/narvii/invite/Invitation;

    if-eqz p5, :cond_0

    .line 121
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    .line 122
    sget v2, Lcom/narvii/lib/R$id;->revoke:I

    if-ne v1, v2, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lcom/narvii/invite/ValidLinkFragment$Adapter;->revoke(Lcom/narvii/invite/Invitation;)V

    .line 127
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 68
    const-class v0, Lcom/narvii/invite/InvitationListResponse;

    return-object v0
.end method
