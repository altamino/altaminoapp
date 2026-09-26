.class public Lcom/narvii/share/ShareDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/share/ShareDialog;->showAnimation:Z

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/share/ShareDialog$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/share/ShareDialog$1;-><init>(Lcom/narvii/share/ShareDialog;)V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/share/ShareDialog;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/share/ShareDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 20
    .line 21
    sget p2, Lcom/narvii/lib/R$layout;->dialog_share_backup:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 25
    .line 26
    sget p2, Lcom/narvii/lib/R$id;->title:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    .line 35
    .line 36
    sget p2, Lcom/narvii/lib/R$id;->share_targets_layout:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    check-cast p2, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->shareToolBarContainer:Landroid/view/ViewGroup;

    .line 45
    const/4 p2, 0x2

    .line 46
    .line 47
    new-array p2, p2, [Lcom/narvii/share/ShareDialogButton;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    .line 50
    .line 51
    sget v1, Lcom/narvii/lib/R$id;->share_dialog_first_button:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Lcom/narvii/share/ShareDialogButton;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    aput-object v1, p2, v2

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    .line 63
    .line 64
    sget v1, Lcom/narvii/lib/R$id;->share_dialog_second_button:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/share/ShareDialogButton;

    .line 71
    .line 72
    aput-object v1, p2, v0

    .line 73
    .line 74
    sget p2, Lcom/narvii/lib/R$id;->share_button_container:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->buttonContainer:Landroid/view/View;

    .line 81
    .line 82
    new-instance p2, Lcom/narvii/share/ShareViewHelper;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p1}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 86
    .line 87
    iput-object p2, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->clickListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareToolBarContainer:Landroid/view/ViewGroup;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1, v0}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    .line 95
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/share/ShareDialog;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/share/ShareDialog;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/logging/ActSemantic;->shared:Lcom/narvii/logging/ActSemantic;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/share/ShareDialog;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static getShareDialogForGlobalProfile(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Z)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget p2, Lcom/narvii/lib/R$string;->share_own_global_profile_text:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget p2, Lcom/narvii/lib/R$string;->share_other_global_profile_text:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 38
    .line 39
    :goto_0
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/share/ShareButtonCopyLink;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    const/4 p0, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 52
    return-object p1
.end method

.method public static getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    sget v2, Lcom/narvii/lib/R$string;->share_shared_thread_template:I

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v5, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 17
    const/4 v6, 0x0

    .line 18
    .line 19
    aput-object v5, v4, v6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 29
    .line 30
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 44
    return-object p1
.end method

.method public static getShareDialogFromAlbum(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    sget v2, Lcom/narvii/lib/R$string;->share_shared_album_text_template:I

    .line 12
    const/4 v3, 0x2

    .line 13
    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v4, p1, Lcom/narvii/model/SharedAlbum;->title:Ljava/lang/String;

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    aput-object v4, v3, v5

    .line 20
    .line 21
    new-instance v4, Lcom/narvii/util/PackageUtils;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v6

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const/4 v6, 0x1

    .line 34
    .line 35
    aput-object v4, v3, v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 44
    .line 45
    iput-boolean v6, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 46
    .line 47
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v5, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 59
    return-object p1
.end method

.method public static getShareDialogFromComment(Lcom/narvii/app/NVContext;Lcom/narvii/model/Comment;)Lcom/narvii/share/ShareDialog;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    iget-object v2, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/share/ShareDialog;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0, v3, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 47
    :cond_0
    return-object v2
.end method

.method public static getShareDialogFromCommunity(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/ShareDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/share/ShareButtonCopyLink;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    const/4 p0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 15
    return-object v0
.end method

.method public static getShareDialogFromFanClub(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    iput v2, v0, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    sget v3, Lcom/narvii/lib/R$string;->share_fan_club_text_template:I

    .line 21
    .line 22
    new-array v4, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x0

    .line 28
    .line 29
    aput-object v5, v4, v6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 42
    .line 43
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 57
    return-object p1
.end method

.method public static getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;
    .locals 4

    .line 1
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/narvii/share/ShareDialog;

    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 4
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 5
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance p2, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    invoke-virtual {v2, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->isMine(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-virtual {v2, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public static getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;
    .locals 1

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Lcom/narvii/share/SharePayload;

    invoke-direct {p2}, Lcom/narvii/share/SharePayload;-><init>()V

    iput-object p1, p2, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 11
    new-instance p3, Lcom/narvii/share/ShareDialog;

    invoke-direct {p3, p0, p2}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 12
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 13
    new-instance p2, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_0
    return-object p3

    .line 14
    :cond_1
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    instance-of v1, p2, Lcom/narvii/model/Feed;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    move-object v1, p2

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/model/Feed;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    sget v4, Lcom/narvii/lib/R$string;->share_media_text:I

    .line 28
    .line 29
    new-array v5, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v6, Lcom/narvii/util/PackageUtils;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    .line 38
    invoke-direct {v6, v7}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    aput-object v6, v5, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 51
    .line 52
    :goto_0
    if-nez p1, :cond_1

    .line 53
    .line 54
    const-string v1, ""

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 58
    .line 59
    :goto_1
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 60
    .line 61
    instance-of v1, p2, Lcom/narvii/model/ChatMessage;

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    instance-of v4, p2, Lcom/narvii/model/Comment;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_2
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 71
    goto :goto_3

    .line 72
    .line 73
    :cond_3
    :goto_2
    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 74
    .line 75
    :goto_3
    iput-object p2, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 76
    .line 77
    const-string v4, "media"

    .line 78
    .line 79
    iput-object v4, v0, Lcom/narvii/share/SharePayload;->contentType:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_4
    iget-object v4, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v4

    .line 95
    xor-int/2addr v4, v3

    .line 96
    .line 97
    iput-boolean v4, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 98
    .line 99
    :goto_4
    new-instance v4, Lcom/narvii/share/ShareDialog;

    .line 100
    .line 101
    .line 102
    invoke-direct {v4, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    .line 106
    move-result p2

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    if-eqz p3, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 114
    move-result p2

    .line 115
    .line 116
    if-nez p2, :cond_5

    .line 117
    .line 118
    new-instance p2, Lcom/narvii/share/ShareButtonUploadToShareFolder;

    .line 119
    .line 120
    .line 121
    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/share/ShareButtonUploadToShareFolder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v3, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 125
    goto :goto_5

    .line 126
    .line 127
    :cond_5
    if-eqz p4, :cond_6

    .line 128
    .line 129
    if-nez v1, :cond_6

    .line 130
    .line 131
    .line 132
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 133
    move-result p2

    .line 134
    .line 135
    if-nez p2, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v3, p4}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 139
    .line 140
    :cond_6
    :goto_5
    iget p2, p1, Lcom/narvii/model/Media;->type:I

    .line 141
    .line 142
    const/16 p3, 0x67

    .line 143
    .line 144
    if-eq p2, p3, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isImage()Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    new-instance p1, Lcom/narvii/share/ShareButtonSaveImage;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v2, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 159
    goto :goto_6

    .line 160
    .line 161
    :cond_7
    new-instance p1, Lcom/narvii/share/ShareButtonCopyLink;

    .line 162
    .line 163
    .line 164
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v2, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 168
    :goto_6
    return-object v4
.end method

.method public static getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;)Lcom/narvii/share/ShareDialog;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getShareDialogFromPhoto(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedFile;Z)Lcom/narvii/share/ShareDialog;
    .locals 6

    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 3
    iget-object v2, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    const/4 v3, 0x0

    const/16 v4, 0x67

    if-eqz v2, :cond_0

    iget v5, v2, Lcom/narvii/model/Media;->type:I

    if-eq v5, v4, :cond_0

    .line 4
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 6
    :goto_0
    new-instance v2, Lcom/narvii/share/ShareDialog;

    invoke-direct {v2, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 7
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v3, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    if-eq p1, v4, :cond_1

    .line 9
    new-instance p1, Lcom/narvii/share/ShareButtonSaveImage;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v1, p1}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    :cond_1
    return-object v2
.end method

.method public static getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    sget v3, Lcom/narvii/lib/R$string;->share_store_item_text_template:I

    .line 17
    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v6, " | "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lcom/narvii/model/StoreItemBaseObject;->getStoreItemTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    aput-object v5, v4, v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    iput-object v2, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 66
    .line 67
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needDownloadImg:Z

    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->forceUseImageOriginUrl:Z

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 83
    return-object p1
.end method

.method public static getShareDialogFromStory(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/share/ShareButtonSaveStory;)Lcom/narvii/share/ShareDialog;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, p2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 36
    :cond_0
    return-object p1
.end method

.method public static getShareDialogFromTopic(Lcom/narvii/app/NVContext;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/share/ShareDialog;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    sget v2, Lcom/narvii/lib/R$string;->share_story_topic_text_template:I

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    .line 21
    aput-object v5, v4, v6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 30
    .line 31
    iput-boolean v3, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v6, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 45
    return-object p1
.end method

.method public static getShareDialogFromWikiFolder(Lcom/narvii/app/NVContext;Lcom/narvii/model/ItemCategory;)Lcom/narvii/share/ShareDialog;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, v0, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 11
    .line 12
    const-string v1, "config"

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    const-string v2, "community"

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget v3, Lcom/narvii/lib/R$string;->share_wiki_folder_text_template:I

    .line 41
    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    aput-object v1, p1, v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, v0, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/share/ShareDialog;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v4, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 67
    return-object p1
.end method

.method private static isMine(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    const-string v2, "sharedFolder"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isModuleEnabled(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Blog;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    move-object v2, p1

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/model/Blog;

    .line 26
    .line 27
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    .line 28
    const/4 v3, 0x2

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    return v0

    .line 32
    .line 33
    :cond_2
    const-string v2, "account"

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    sget-object v3, Lcom/narvii/modulization/Module;->photoUploadPath:[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lcom/narvii/modulization/CommunityConfigHelper;->getPrivilege([Ljava/lang/String;)Lcom/narvii/modulization/entry/Privilege;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/narvii/util/PrivilegeUtils;->visibleToUser(Lcom/narvii/modulization/entry/Privilege;Lcom/narvii/model/User;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    return v0

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    if-nez p0, :cond_4

    .line 63
    return v0

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :cond_5
    return v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "share"

    return-object v0
.end method

.method public setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->buttons:[Lcom/narvii/share/ShareDialogButton;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getTextString()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonCustomInfo;->getIcon()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$id;->share_button_target_info:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->buttonContainer:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setStatContent(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setTitle(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/share/ShareDialog;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/share/ShareDialog;->showAnimation:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 23
    .line 24
    const-wide/16 v1, 0xc8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    .line 29
    sget v1, Lcom/narvii/lib/R$id;->bg:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    .line 40
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDialog$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDialog$2;-><init>(Lcom/narvii/share/ShareDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    sget v0, Lcom/narvii/lib/R$id;->main_layout:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    sget v2, Lcom/narvii/lib/R$anim;->slide_up:I

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_1
    return-void
.end method
