.class public Lcom/narvii/community/CommunityShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "SourceFile"


# static fields
.field public static KEY_SHARE_SUBJECT:Ljava/lang/String; = "shareSubject"

.field public static KEY_SHARE_TEXT:Ljava/lang/String; = "shareText"


# instance fields
.field community:Lcom/narvii/model/Community;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->community_share_icon:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 21
    .line 22
    sget v0, Lcom/narvii/lib/R$id;->community_share_bg:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    const-string v1, "imageLoader"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    new-instance v3, Lcom/narvii/community/CommunityShareFragment$1;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, p0, v0}, Lcom/narvii/community/CommunityShareFragment$1;-><init>(Lcom/narvii/community/CommunityShareFragment;Lcom/narvii/widget/PromotionalImageView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 61
    .line 62
    :cond_2
    :goto_0
    sget v0, Lcom/narvii/lib/R$id;->community_share_title:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    sget v1, Lcom/narvii/lib/R$id;->community_share_tagline:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 95
    .line 96
    sget v1, Lcom/narvii/lib/R$id;->community_id_info:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    .line 104
    sget v2, Lcom/narvii/lib/R$string;->amino_id_with_name:I

    .line 105
    const/4 v3, 0x1

    .line 106
    .line 107
    new-array v4, v3, [Ljava/lang/Object;

    .line 108
    const/4 v5, 0x0

    .line 109
    .line 110
    aput-object v0, v4, v5

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    new-instance v4, Landroid/text/SpannableString;

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v6

    .line 124
    .line 125
    if-nez v6, :cond_3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 129
    move-result v0

    .line 130
    .line 131
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 138
    move-result v2

    .line 139
    .line 140
    const/16 v3, 0x21

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v6, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    .line 145
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 146
    .line 147
    .line 148
    const v6, 0x3f333333    # 0.7f

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v2, v5, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 155
    .line 156
    new-instance v2, Lcom/narvii/util/AlignSuperscriptSpan;

    .line 157
    .line 158
    .line 159
    const v7, 0x3eb33333    # 0.35f

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v7, v6}, Lcom/narvii/util/AlignSuperscriptSpan;-><init>(FF)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v2, v5, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    sget v0, Lcom/narvii/lib/R$id;->community_id_hint:I

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    check-cast p1, Landroid/widget/TextView;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    sget v1, Lcom/narvii/lib/R$string;->community_id:I

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v1, ": "

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->share_community_content_layout:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "share_community"

    return-object v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 7

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->real_share_layout:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "community"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/share/SharePayload;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 24
    .line 25
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 26
    .line 27
    const-string v2, "shareText"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    sget v3, Lcom/narvii/lib/R$string;->share_community_text_template_1:I

    .line 45
    const/4 v5, 0x1

    .line 46
    .line 47
    new-array v5, v5, [Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 50
    .line 51
    if-nez v6, :cond_0

    .line 52
    const/4 v6, 0x0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object v6, v6, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 56
    .line 57
    :goto_0
    aput-object v6, v5, v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    iput-boolean v4, v1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 77
    .line 78
    iput-object p1, v1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 79
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/model/Community;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/model/Community;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/Community;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 44
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
