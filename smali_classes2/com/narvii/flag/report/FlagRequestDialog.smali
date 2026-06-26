.class public abstract Lcom/narvii/flag/report/FlagRequestDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "FlagRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/api/ApiResponse;",
        ">",
        "Lcom/narvii/util/dialog/AlertDialog;"
    }
.end annotation


# instance fields
.field protected blockCheck:Landroid/widget/CheckBox;

.field protected blockLayout:Landroid/widget/RelativeLayout;

.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public communityId:I

.field protected edtRequest:Landroid/widget/EditText;

.field private minLength:I

.field private progressView:Landroid/widget/ProgressBar;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->clazz:Ljava/lang/Class;

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f06f9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/16 p2, 0xce

    const/16 v0, 0x7d

    .line 49
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const p2, 0x7f0b01ae

    .line 51
    invoke-virtual {p0, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p2, 0x7f090965

    .line 53
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    const p2, 0x7f090966

    .line 55
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->progressView:Landroid/widget/ProgressBar;

    const p2, 0x7f090139

    .line 56
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090138

    .line 57
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 58
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->showBlockUser()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p2, 0x7f090484

    .line 60
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 61
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090562

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const v1, 0x7f090b9a

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090b08

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 69
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0193

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/narvii/flag/report/FlagRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagRequestDialog$1;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f1077

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    new-instance v0, Lcom/narvii/flag/report/FlagRequestDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagRequestDialog$2;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->progressView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private checkRequestMessage()Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f06e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/report/FlagRequestDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const p2, 0x7f0b0178

    goto :goto_0

    :cond_0
    const p2, 0x7f0b017d

    goto :goto_0

    :cond_1
    const p2, 0x7f0b0179

    goto :goto_0

    :cond_2
    const p2, 0x7f0b0176

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 252
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 254
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0177

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 256
    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object p2
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b0190

    return v0
.end method

.method public abstract createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
.end method

.method public execPreBlockRequest()V
    .locals 0

    return-void
.end method

.method protected getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isStatusOk()Z
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->checkRequestMessage()Z

    move-result v0

    return v0
.end method

.method protected onBlockUser()V
    .locals 0

    return-void
.end method

.method public onRequestFail(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestSuccess(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReuqestFinished(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onSendRequest()V
    .locals 0

    return-void
.end method

.method public sendFlagRequest()V
    .locals 4

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 154
    iget-object v1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 156
    new-instance v2, Lcom/narvii/flag/report/FlagRequestDialog$3;

    iget-object v3, p0, Lcom/narvii/flag/report/FlagRequestDialog;->clazz:Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/report/FlagRequestDialog$3;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->showBlockUser()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->communityId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/block/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/flag/report/FlagRequestDialog;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/narvii/flag/report/FlagRequestDialog$4;

    const-class v3, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/report/FlagRequestDialog$4;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setFlagUserInfo(ILjava/lang/String;)V
    .locals 0

    .line 207
    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->userId:Ljava/lang/String;

    .line 208
    iput p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->communityId:I

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
