.class public Lcom/narvii/invite/ValidLinkFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->cid:I

    .line 8
    const/4 p1, 0x3

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x2

    .line 14
    .line 15
    .line 16
    invoke-static {p3, p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->formatter:Ljava/text/DateFormat;

    .line 20
    return-void
.end method

.method private revoke(Lcom/narvii/invite/Invitation;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    const-string v1, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 27
    .line 28
    const-string v4, "__communityId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v4, "community/invitation/"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/invite/Invitation;->id()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    new-instance v3, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;

    .line 72
    .line 73
    const-class v4, Lcom/narvii/invite/NewInvitationResponse;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;-><init>(Lcom/narvii/invite/ValidLinkFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/invite/Invitation;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 80
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
    iget v0, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->cid:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "community/invitation"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "status"

    .line 19
    .line 20
    const-string v1, "normal"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

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

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/invite/Invitation;

    .line 3
    .line 4
    sget v0, Lcom/narvii/lib/R$layout;->item_valid_link:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget p3, Lcom/narvii/lib/R$id;->create_by:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    check-cast p3, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$string;->created_by_placeholder:I

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v4, p1, Lcom/narvii/invite/Invitation;->author:Lcom/narvii/model/User;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    const/4 v4, 0x0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    :goto_0
    const/4 v5, 0x0

    .line 35
    .line 36
    aput-object v4, v3, v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/invite/Invitation;->author:Lcom/narvii/model/User;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    move v5, v2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p3, v5}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 52
    .line 53
    sget p3, Lcom/narvii/lib/R$id;->link:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    check-cast p3, Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/narvii/invite/Invitation;->inviteCode:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    sget p3, Lcom/narvii/lib/R$id;->expire:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    check-cast p3, Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v0, Ljava/util/Date;

    .line 75
    .line 76
    iget-object v1, p1, Lcom/narvii/invite/Invitation;->createdTime:Ljava/util/Date;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 80
    move-result-wide v3

    .line 81
    .line 82
    iget v1, p1, Lcom/narvii/invite/Invitation;->duration:I

    .line 83
    .line 84
    mul-int/lit16 v1, v1, 0x3e8

    .line 85
    int-to-long v5, v1

    .line 86
    add-long/2addr v3, v5

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/narvii/invite/ValidLinkFragment;->revokedIds:Ljava/util/HashSet;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/invite/Invitation;->id()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    .line 106
    const v3, -0x16f2c5

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :cond_2
    const v3, -0x646465

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 118
    .line 119
    sget v0, Lcom/narvii/lib/R$string;->expired:I

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    iget-object v4, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 132
    .line 133
    sget v5, Lcom/narvii/lib/R$string;->expire_on:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v4, ": "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget p1, p1, Lcom/narvii/invite/Invitation;->duration:I

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->formatter:Ljava/text/DateFormat;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    goto :goto_2

    .line 157
    .line 158
    :cond_4
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    .line 159
    .line 160
    sget v0, Lcom/narvii/lib/R$string;->never:I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    sget p1, Lcom/narvii/lib/R$id;->revoke:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object p3

    .line 181
    .line 182
    xor-int/lit8 v0, v1, 0x1

    .line 183
    .line 184
    .line 185
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/invite/Invitation;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/invite/Invitation;

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$id;->revoke:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/invite/ValidLinkFragment$Adapter;->revoke(Lcom/narvii/invite/Invitation;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/invite/InvitationListResponse;

    return-object v0
.end method
