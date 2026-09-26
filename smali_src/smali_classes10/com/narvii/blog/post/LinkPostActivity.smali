.class public Lcom/narvii/blog/post/LinkPostActivity;
.super Lcom/narvii/blog/post/BlogPostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;,
        Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;
    }
.end annotation


# static fields
.field static runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;


# instance fields
.field callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

.field fromShare:Z

.field isHandingUrl:Z

.field linkDialog:Lcom/narvii/util/dialog/AlertDialog;

.field linkSummary:Lcom/narvii/model/LinkSummary;

.field linkUrl:Ljava/lang/String;

.field parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field photo:Lcom/narvii/photos/PhotoManager;

.field postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

.field textCrawler:Lcom/narvii/util/crawler/TextCrawler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/post/BlogPostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/LinkPostActivity$4;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/blog/post/LinkPostActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/LinkPostActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/LinkPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method static downloadUrl(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;-><init>(Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    .line 40
    .line 41
    iput-object p0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    .line 44
    .line 45
    iput-object p2, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->fileD:Ljava/io/File;

    .line 46
    .line 47
    sput-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 28
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/narvii/blog/post/LinkPostActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->lambda$onCreate$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/blog/post/LinkPostActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "link"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080181

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "link"

    return-object v0
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f080182

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 26
    return-void
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0638

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 26
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a07f1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/blog/post/b;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/narvii/blog/post/b;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/blog/post/c;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/narvii/blog/post/c;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    const-string v0, "photo"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->photo:Lcom/narvii/photos/PhotoManager;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x1

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v2, "android.intent.extra.TEXT"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 103
    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    const-string v2, "android.intent.action.VIEW"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v2, "://"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v2, "/"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    iput-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v4

    .line 188
    .line 189
    if-eqz v4, :cond_1

    .line 190
    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v4

    .line 194
    .line 195
    check-cast v4, Ljava/lang/String;

    .line 196
    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    iget-object v6, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    iput-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 218
    goto :goto_0

    .line 219
    .line 220
    .line 221
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    if-eqz v2, :cond_2

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    const-string v3, ""

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v2

    .line 235
    .line 236
    if-nez v2, :cond_2

    .line 237
    .line 238
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 242
    move-result v3

    .line 243
    sub-int/2addr v3, v1

    .line 244
    const/4 v4, 0x0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 248
    move-result-object v2

    .line 249
    .line 250
    iput-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 251
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    iget-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v3, "?"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 279
    .line 280
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 281
    .line 282
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 283
    .line 284
    if-eqz v0, :cond_4

    .line 285
    .line 286
    if-nez p1, :cond_4

    .line 287
    .line 288
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 289
    .line 290
    .line 291
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 292
    const/4 v0, 0x5

    .line 293
    .line 294
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 295
    .line 296
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 297
    .line 298
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    .line 299
    .line 300
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 301
    .line 302
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    .line 306
    :cond_4
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120438

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120eeb

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->content()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    :cond_5
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method saveImage(Ljava/lang/String;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    const-string v2, "thumb.tmp"

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1, v0, p2}, Lcom/narvii/blog/post/LinkPostActivity;->downloadUrl(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    :cond_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    iget-object v2, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "pageSnippet"

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 10
    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget-object v2, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 12
    iget-object v2, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    :cond_4
    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method showLinkPasteDialog()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 26
    .line 27
    .line 28
    const v1, 0x7f120b94

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    const v1, 0x7f120b95

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/util/dialog/AlertDialog;->clearButtons()V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 59
    .line 60
    .line 61
    const v2, 0x7f1201e2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    new-instance v3, Lcom/narvii/blog/post/LinkPostActivity$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/narvii/blog/post/LinkPostActivity$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 77
    .line 78
    .line 79
    const v2, 0x7f120402

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    new-instance v3, Lcom/narvii/blog/post/LinkPostActivity$2;

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, p0, v0}, Lcom/narvii/blog/post/LinkPostActivity$2;-><init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/EditText;)V

    .line 89
    .line 90
    const/16 v4, 0x20

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2, v4, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->enableView(Landroid/widget/TextView;)V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->disableView(Landroid/widget/TextView;)V

    .line 114
    .line 115
    :goto_0
    new-instance v2, Lcom/narvii/blog/post/LinkPostActivity$3;

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, p0, v1}, Lcom/narvii/blog/post/LinkPostActivity$3;-><init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/TextView;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 127
    :cond_3
    :goto_1
    return-void
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 4
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 4

    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    const v1, 0x7f120eda

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v2, 0x19

    const v3, 0x7f120ef0

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
