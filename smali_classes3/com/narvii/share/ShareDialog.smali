.class public Lcom/narvii/share/ShareDialog;
.super Lcom/narvii/app/NVDialog;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareDialog$POSITION;
    }
.end annotation


# static fields
.field public static final POSITION_FIRST:I = 0x0

.field public static final POSITION_SECOND:I = 0x1


# instance fields
.field buttonContainer:Landroid/view/View;

.field buttons:[Lcom/narvii/share/ShareDialogButton;

.field private clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

.field nvContext:Lcom/narvii/app/NVContext;

.field private shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

.field sharePayload:Lcom/narvii/share/SharePayload;

.field shareToolBarContainer:Landroid/view/ViewGroup;

.field private showAnimation:Z

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 112
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/narvii/share/ShareDialog;->showAnimation:Z

    .line 68
    new-instance v1, Lcom/narvii/share/ShareDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/share/ShareDialog$1;-><init>(Lcom/narvii/share/ShareDialog;)V

    iput-object v1, p0, Lcom/narvii/share/ShareDialog;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 113
    iput-object p1, p0, Lcom/narvii/share/ShareDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 114
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 115
    sget p2, Lcom/narvii/lib/R$layout;->dialog_share_backup:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 117
    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    .line 118
    sget p2, Lcom/narvii/lib/R$id;->share_targets_layout:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->shareToolBarContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/narvii/share/ShareDialogButton;

    .line 119
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    .line 120
    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    sget v1, Lcom/narvii/lib/R$id;->share_dialog_first_button:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/share/ShareDialogButton;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 121
    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    sget v1, Lcom/narvii/lib/R$id;->share_dialog_second_button:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/share/ShareDialogButton;

    aput-object v1, p2, v0

    .line 122
    sget p2, Lcom/narvii/lib/R$id;->share_button_container:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->buttonContainer:Landroid/view/View;

    .line 123
    new-instance p2, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p2, p1}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 124
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareToolBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/share/ShareDialog;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 107
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->shared:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getShareDialogForGlobalProfile(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Z)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 303
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 304
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    if-eqz p2, :cond_0

    .line 307
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->share_own_global_profile_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->share_other_global_profile_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 312
    :goto_0
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    const/4 p2, 0x0

    .line 313
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 289
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 290
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->share_shared_thread_template:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 292
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 293
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 294
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 296
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 297
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogFromAlbum(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 277
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 278
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->share_shared_album_text_template:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/narvii/model/SharedAlbum;->title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/narvii/util/PackageUtils;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 279
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 280
    iput-boolean v6, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 282
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 283
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v5, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogFromComment(Lcom/narvii/app/NVContext;Lcom/narvii/model/Comment;)Lcom/narvii/share/ShareDialog;
    .locals 4

    .line 264
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 265
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x0

    .line 266
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 267
    iget-object v2, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 268
    new-instance v2, Lcom/narvii/share/ShareDialog;

    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 269
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-direct {v0, p0, v3, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    invoke-virtual {v2, v1, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_0
    return-object v2
.end method

.method public static getShareDialogFromCommunity(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 431
    new-instance v0, Lcom/narvii/share/ShareDialog;

    invoke-direct {v0, p0, p1}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 432
    new-instance p1, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object v0
.end method

.method public static getShareDialogFromFanClub(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 229
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 230
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    const/16 v2, 0xa

    .line 232
    iput v2, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 234
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_fan_club_text_template:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 237
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 239
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 240
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;
    .locals 4

    .line 193
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 194
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    .line 195
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 196
    instance-of v2, p1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    .line 197
    iput v2, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 201
    new-instance v2, Lcom/narvii/share/ShareDialog;

    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    const/4 v0, 0x0

    .line 202
    new-instance v3, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v3, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v0, v3}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 204
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    new-instance p2, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    invoke-virtual {v2, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->isMine(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 207
    invoke-virtual {v2, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;
    .locals 2

    if-eqz p2, :cond_2

    .line 246
    new-instance p2, Lcom/narvii/share/SharePayload;

    invoke-direct {p2}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 247
    iput-object p1, p2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 p3, 0x1

    .line 248
    iput-boolean p3, p2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 249
    instance-of p3, p1, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lcom/narvii/model/Blog;

    iget p3, p3, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p3, v0, :cond_0

    const/16 p3, 0xb

    .line 250
    iput p3, p2, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 253
    new-instance p3, Lcom/narvii/share/ShareDialog;

    invoke-direct {p3, p0, p2}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 254
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 255
    new-instance v0, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    invoke-virtual {p3, p2, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_1
    return-object p3

    .line 259
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/share/BaseShareButtonRepost;",
            ")",
            "Lcom/narvii/share/ShareDialog;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 356
    instance-of v1, p2, Lcom/narvii/model/Feed;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 357
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/narvii/lib/R$string;->share_media_text:I

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Lcom/narvii/util/PackageUtils;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 361
    :cond_1
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 362
    instance-of v1, p2, Lcom/narvii/model/ChatMessage;

    if-nez v1, :cond_3

    instance-of v4, p2, Lcom/narvii/model/Comment;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 365
    :cond_2
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    goto :goto_3

    .line 363
    :cond_3
    :goto_2
    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 367
    :goto_3
    iput-object p2, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const-string v4, "media"

    .line 368
    iput-object v4, v0, Lcom/narvii/share/SharePayload;->contentType:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    goto :goto_4

    .line 373
    :cond_4
    iget-object v4, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 376
    :goto_4
    new-instance v4, Lcom/narvii/share/ShareDialog;

    invoke-direct {v4, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 378
    invoke-static {p0, p2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 379
    new-instance p2, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    invoke-virtual {v4, v3, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    if-nez v1, :cond_6

    .line 380
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 381
    invoke-virtual {v4, v3, p4}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 383
    :cond_6
    :goto_5
    iget p2, p1, Lcom/narvii/model/Media;->type:I

    const/16 p3, 0x67

    if-eq p2, p3, :cond_7

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isImage()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 384
    new-instance p1, Lcom/narvii/share/ShareButtonSaveImage;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v4, v2, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    goto :goto_6

    .line 386
    :cond_7
    new-instance p1, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v4, v2, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :goto_6
    return-object v4
.end method

.method public static getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;)Lcom/narvii/share/ShareDialog;
    .locals 1

    const/4 v0, 0x1

    .line 394
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;
    .locals 6

    .line 398
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 400
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    .line 401
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 403
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    const/16 v3, 0x67

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v5, v2, Lcom/narvii/model/Media;->type:I

    if-eq v5, v3, :cond_0

    .line 404
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 405
    iget-object v2, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    goto :goto_0

    .line 407
    :cond_0
    iput-boolean v4, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 410
    :goto_0
    new-instance v2, Lcom/narvii/share/ShareDialog;

    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 411
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v4, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    if-eqz p2, :cond_1

    .line 412
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    if-eq p1, v3, :cond_1

    .line 413
    new-instance p1, Lcom/narvii/share/ShareButtonSaveImage;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v1, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_1
    return-object v2
.end method

.method public static getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 337
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 338
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    .line 339
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 340
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_store_item_text_template:I

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/narvii/model/StoreItemBaseObject;->getStoreItemTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 341
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 342
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 345
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->forceUseImageOriginUrl:Z

    .line 347
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 348
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogFromStory(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/share/ShareButtonSaveStory;)Lcom/narvii/share/ShareDialog;
    .locals 4

    .line 213
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 214
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 216
    iget v2, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    .line 217
    iput v2, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 220
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    const/4 v0, 0x0

    .line 221
    new-instance v2, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v2, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0, v2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p1, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_1
    return-object p1
.end method

.method public static getShareDialogFromTopic(Lcom/narvii/app/NVContext;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 419
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 421
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->share_story_topic_text_template:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 422
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 423
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 425
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 426
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method public static getShareDialogFromWikiFolder(Lcom/narvii/app/NVContext;Lcom/narvii/model/ItemCategory;)Lcom/narvii/share/ShareDialog;
    .locals 5

    .line 319
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 320
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    const-string v1, "config"

    .line 324
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "community"

    .line 325
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 326
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 328
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_wiki_folder_text_template:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, p1, v4

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 330
    new-instance p1, Lcom/narvii/share/ShareDialog;

    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 331
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v4, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    return-object p1
.end method

.method private static isMine(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "account"

    .line 474
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/account/AccountService;

    .line 475
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 440
    :cond_0
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v2, "sharedFolder"

    .line 445
    invoke-virtual {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isModuleEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 449
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    const-string v2, "account"

    .line 453
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/account/AccountService;

    .line 454
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 456
    sget-object v3, Lcom/narvii/modulization/Module;->photoUploadPath:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/modulization/CommunityConfigHelper;->getPrivilege([Ljava/lang/String;)Lcom/narvii/modulization/entry/Privilege;

    move-result-object v1

    .line 457
    invoke-static {v1, v2}, Lcom/narvii/util/PrivilegeUtils;->visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return v0

    .line 466
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SharePanel"

    return-object v0
.end method

.method public setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    aget-object p1, v0, p1

    .line 181
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getTextString()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 182
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 184
    sget v0, Lcom/narvii/lib/R$id;->share_button_target_info:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 185
    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->buttonContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    iput-object p1, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public setStatContent(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    iput-object p1, v0, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 140
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 142
    iget-boolean v0, p0, Lcom/narvii/share/ShareDialog;->showAnimation:Z

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 145
    sget v1, Lcom/narvii/lib/R$id;->bg:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDialog$2;-><init>(Lcom/narvii/share/ShareDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$anim;->slide_up:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
