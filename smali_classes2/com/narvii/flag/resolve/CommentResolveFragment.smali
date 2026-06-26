.class public Lcom/narvii/flag/resolve/CommentResolveFragment;
.super Lcom/narvii/app/NVFragment;
.source "CommentResolveFragment.java"

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

    .line 45
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/api/CommentResponse;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)Lcom/narvii/model/api/CommentResponse;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/flag/resolve/CommentResolveFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->configFakeDeletedComment()Lcom/narvii/model/Comment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method private configFakeDeletedComment()Lcom/narvii/model/Comment;
    .locals 4

    .line 175
    new-instance v0, Lcom/narvii/model/Comment;

    invoke-direct {v0}, Lcom/narvii/model/Comment;-><init>()V

    .line 176
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    const v1, 0x7f0f029f

    .line 177
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 180
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v2, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 181
    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    iput v2, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 182
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Comment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method private queryCommentInfo()V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    iget-object v3, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 112
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 113
    new-instance v2, Lcom/narvii/flag/resolve/CommentResolveFragment$1;

    const-class v3, Lcom/narvii/model/api/CommentResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/resolve/CommentResolveFragment$1;-><init>(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->progress:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->errorContaienr:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->contentContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->commentResponse:Lcom/narvii/model/api/CommentResponse;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    if-eqz v0, :cond_6

    .line 146
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->nicknameView:Lcom/narvii/widget/NicknameView;

    iget-object v0, v0, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_3
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto :goto_4

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    goto :goto_4

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_4
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object v2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    iget-object v2, v2, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 169
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public attachObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 236
    iget-object v1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v5, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->comment:Lcom/narvii/model/Comment;

    const/4 v6, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V

    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090298

    const-string/jumbo v1, "unable to open "

    const-string v2, "android.intent.action.VIEW"

    if-eq p1, v0, :cond_1

    const v0, 0x7f090764

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ndc://user-profile/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ndc://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v3, v3, Lcom/narvii/flag/model/Flag;->parentType:I

    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v4, v4, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v4, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v4, v4, Lcom/narvii/flag/model/Flag;->parentType:I

    if-nez v4, :cond_2

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v0, v0, Lcom/narvii/flag/model/Flag;->parentType:I

    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/comment"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "flag_item"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/flag/model/Flag;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/model/Flag;

    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    const p1, 0x7f0f029b

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0267

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-static {p1, p0}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 80
    iget-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-eqz p2, :cond_0

    const p3, 0x7f0f0348

    .line 81
    invoke-virtual {p0, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/flag/resolve/FlagResolveBar;->setLeftText(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090764

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 90
    iget-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09028f

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvContent:Landroid/widget/TextView;

    const p2, 0x7f09029a

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvDate:Landroid/widget/TextView;

    const p2, 0x7f090ab2

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const p2, 0x7f0903de

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EmojioneView;

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->emojioneView:Lcom/narvii/widget/EmojioneView;

    const p2, 0x7f090298

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    .line 97
    iget-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->btnSeeAll:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902d2

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->contentContainer:Landroid/view/View;

    const p2, 0x7f0903fc

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->errorContaienr:Landroid/view/View;

    const p2, 0x102000d

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->progress:Landroid/view/View;

    const p2, 0x7f090b5b

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment;->tvError:Landroid/widget/TextView;

    .line 104
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->updateViews()V

    .line 105
    invoke-direct {p0}, Lcom/narvii/flag/resolve/CommentResolveFragment;->queryCommentInfo()V

    return-void
.end method
