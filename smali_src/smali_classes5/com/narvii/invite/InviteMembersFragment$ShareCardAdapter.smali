.class Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareCardAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

.method private shareAminoCard()V
    .locals 10

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 11
    .line 12
    const-string v2, "__communityId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v4, "ndc://fragment/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-class v4, Lcom/narvii/community/CommunityShareFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    const-string v4, "android.intent.action.VIEW"

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 60
    .line 61
    const/16 v4, 0xc8

    .line 62
    .line 63
    if-ne v3, v4, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 66
    .line 67
    .line 68
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    sget v4, Lcom/narvii/lib/R$string;->share_community_subject_template:I

    .line 72
    const/4 v5, 0x1

    .line 73
    .line 74
    new-array v6, v5, [Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v7, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 77
    const/4 v8, 0x0

    .line 78
    .line 79
    aput-object v7, v6, v8

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 91
    .line 92
    .line 93
    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    sget v7, Lcom/narvii/lib/R$string;->share_community_text_template:I

    .line 97
    .line 98
    new-array v5, v5, [Ljava/lang/Object;

    .line 99
    .line 100
    iget-object v9, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 101
    .line 102
    aput-object v9, v5, v8

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "\n\n"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v6, v0, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    sget-object v5, Lcom/narvii/community/CommunityShareFragment;->KEY_SHARE_SUBJECT:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    sget-object v3, Lcom/narvii/community/CommunityShareFragment;->KEY_SHARE_TEXT:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    sget-object v3, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 139
    .line 140
    const-string v4, "ACM Share"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_1
    sget-object v3, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 147
    .line 148
    const-string v4, "Share Amino Card"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    :goto_0
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    .line 158
    sget-object v2, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    invoke-static {p0, v1}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    sget p1, Lcom/narvii/lib/R$layout;->share_community_card_layout:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string p2, "community"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/community/CommunityService;

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 17
    .line 18
    const-string v0, "__communityId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 22
    move-result p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    sget p3, Lcom/narvii/lib/R$id;->community_share_icon:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 35
    .line 36
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 40
    .line 41
    sget p3, Lcom/narvii/lib/R$id;->community_share_bg:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 48
    .line 49
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/invite/InviteMembersFragment;->u(Lcom/narvii/invite/InviteMembersFragment;)I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    iget-object v0, p2, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    const-string v0, "imageLoader"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 81
    .line 82
    iget-object v1, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    new-instance v2, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p0, p3}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;Lcom/narvii/widget/PromotionalImageView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 93
    .line 94
    :cond_1
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->community_share_title:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    check-cast p3, Landroid/widget/TextView;

    .line 101
    .line 102
    sget v0, Lcom/narvii/lib/R$id;->community_share_tagline:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    iget-object p3, p2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 121
    .line 122
    sget p3, Lcom/narvii/lib/R$id;->community_id_info:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p3

    .line 127
    .line 128
    check-cast p3, Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 p2, 0x1

    .line 137
    .line 138
    const/high16 v0, 0x41800000    # 16.0f

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    .line 143
    sget p2, Lcom/narvii/lib/R$id;->community_id_hint:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    check-cast p2, Landroid/widget/TextView;

    .line 150
    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 157
    .line 158
    sget v1, Lcom/narvii/lib/R$string;->community_id:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v0, ": "

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p3

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    sget p2, Lcom/narvii/lib/R$id;->share_amino_card:I

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p2

    .line 184
    .line 185
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget v1, Lcom/narvii/lib/R$id;->share_amino_card:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$ShareCardAdapter;->shareAminoCard()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method
