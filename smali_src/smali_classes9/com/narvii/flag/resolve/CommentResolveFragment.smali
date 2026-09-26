.class public Lcom/narvii/flag/resolve/CommentResolveFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/resolve/CommentResolveFragment$CommentTagClickListener;
    }
.end annotation


# instance fields
.field private btnSeeAll:Landroid/view/View;

.field private comment:Lcom/narvii/model/Comment;

.field private commentResponse:Lcom/narvii/model/api/CommentResponse;

.field private contentContainer:Landroid/view/View;

.field private datetime:Lcom/narvii/util/DateTimeFormatter;

.field private emojioneView:Lcom/narvii/widget/EmojioneView;

.field private error:Ljava/lang/String;

.field private errorContaienr:Landroid/view/View;

.field private flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

.field private mFlag:Lcom/narvii/flag/model/Flag;

.field private nicknameView:Lcom/narvii/widget/NicknameView;

.field private progress:Landroid/view/View;

.field private stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field private tvContent:Landroid/widget/TextView;

.field private tvDate:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private configFakeDeletedComment()Lcom/narvii/model/Comment;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Comment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Comment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 11
    .line 12
    iput-object v1, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f1202ea

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    const v3, 0x7f080181

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 50
    .line 51
    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 52
    .line 53
    iput v2, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 54
    .line 55
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    .line 58
    return-object v0
.end method

.method static bridge synthetic n(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/api/CommentResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-void
.end method

.method private queryCommentInfo()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 7
    .line 8
    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 9
    .line 10
    iget-object v3, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "api"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/flag/resolve/CommentResolveFragment$1;

    .line 40
    .line 41
    const-class v3, Lcom/narvii/model/api/CommentResponse;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/resolve/CommentResolveFragment$1;-><init>(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->configFakeDeletedComment()Lcom/narvii/model/Comment;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/flag/resolve/CommentResolveFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->progress:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->errorContaienr:Landroid/view/View;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    move v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v3

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->contentContainer:Landroid/view/View;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    move v1, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v1, v3

    .line 41
    .line 42
    .line 43
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvContent:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    const/4 v0, 0x0

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :cond_3
    const/16 v1, 0xf

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    :goto_3
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_4
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 130
    goto :goto_4

    .line 131
    .line 132
    :cond_5
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    :goto_4
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvDate:Landroid/widget/TextView;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    .line 147
    .line 148
    iget-object v2, v2, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    :cond_6
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvError:Landroid/widget/TextView;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_7
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iget-object v5, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    .line 5
    const/4 v6, 0x3

    .line 6
    move-object v0, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 16
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0360

    .line 8
    .line 9
    const-string v1, "unable to open "

    .line 10
    .line 11
    const-string v2, "android.intent.action.VIEW"

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a09f9

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v0, "ndc://user-profile/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance v0, Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {p0, v0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v0, "ndc://"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 96
    .line 97
    iget v3, v3, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "/"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 112
    .line 113
    iget-object v4, v4, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget-object v4, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 123
    .line 124
    iget v4, v4, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 125
    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 137
    .line 138
    iget v0, v0, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v0, "/comment"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    :try_start_1
    invoke-static {p0, v0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    goto :goto_0

    .line 178
    :catch_1
    move-exception p1

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "flag_item"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/flag/model/Flag;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/flag/model/Flag;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 30
    .line 31
    .line 32
    const p1, 0x7f1202e6

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0291

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    const p3, 0x7f1203a0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a09f9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a0357

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvContent:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    const p2, 0x7f0a0362

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvDate:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    const p2, 0x7f0a0dac

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    check-cast p2, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 51
    .line 52
    .line 53
    const p2, 0x7f0a04dd

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Lcom/narvii/widget/EmojioneView;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 62
    .line 63
    .line 64
    const p2, 0x7f0a0360

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const p2, 0x7f0a039f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->contentContainer:Landroid/view/View;

    .line 83
    .line 84
    .line 85
    const p2, 0x7f0a04fe

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->errorContaienr:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    const p2, 0x102000d

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->progress:Landroid/view/View;

    .line 101
    .line 102
    .line 103
    const p2, 0x7f0a0e51

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvError:Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->updateViews()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->queryCommentInfo()V

    .line 118
    return-void
.end method
