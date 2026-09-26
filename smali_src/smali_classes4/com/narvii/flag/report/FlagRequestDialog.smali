.class public abstract Lcom/narvii/flag/report/FlagRequestDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->clazz:Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f1207a2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    const/16 p1, 0xce

    .line 22
    .line 23
    const/16 p2, 0x7d

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0d01cf

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a0c23

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Landroid/widget/EditText;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0a0c24

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Landroid/widget/ProgressBar;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->progressView:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    .line 62
    const p1, 0x7f0a01d7

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0a01d6

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Landroid/widget/CheckBox;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->showBlockUser()Z

    .line 87
    move-result p2

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    if-eqz p2, :cond_0

    .line 92
    move p2, v0

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move p2, v1

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    const p1, 0x7f0a05c4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    if-nez p2, :cond_1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    goto :goto_1

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    const p2, 0x7f0a06d5

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a0e9e

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 136
    .line 137
    .line 138
    const v2, 0x7f0a0dea

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    check-cast p1, Landroid/widget/TextView;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    iget-object v2, v2, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    iget-object p2, p2, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    iget-object p2, p2, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    const p2, 0x7f1201e2

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    new-instance p2, Lcom/narvii/flag/report/FlagRequestDialog$1;

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p0}, Lcom/narvii/flag/report/FlagRequestDialog$1;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    const p2, 0x7f121173

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    new-instance p2, Lcom/narvii/flag/report/FlagRequestDialog$2;

    .line 204
    .line 205
    .line 206
    invoke-direct {p2, p0}, Lcom/narvii/flag/report/FlagRequestDialog$2;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;)V

    .line 207
    const/4 v0, 0x4

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 211
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->progressView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private checkRequestMessage()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    const v3, 0x7f12078a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 36
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_0
    return v1
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 1
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

    const p2, 0x7f0d0196

    goto :goto_0

    :cond_0
    const p2, 0x7f0d019b

    goto :goto_0

    :cond_1
    const p2, 0x7f0d0197

    goto :goto_0

    :cond_2
    const p2, 0x7f0d0194

    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0195

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d01af

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->checkRequestMessage()Z

    .line 4
    move-result v0

    .line 5
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

.method public screenshotFailed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->progressView:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f1207ca

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    return-void
.end method

.method public sendFlagRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "api"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    new-instance v2, Lcom/narvii/flag/report/FlagRequestDialog$3;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/flag/report/FlagRequestDialog;->clazz:Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/report/FlagRequestDialog$3;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->showBlockUser()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->communityId:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v3, "/block/"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/flag/report/FlagRequestDialog;->userId:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    new-instance v2, Lcom/narvii/flag/report/FlagRequestDialog$4;

    .line 102
    .line 103
    const-class v3, Lcom/narvii/userblock/BlockListResponse;

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, p0, v3}, Lcom/narvii/flag/report/FlagRequestDialog$4;-><init>(Lcom/narvii/flag/report/FlagRequestDialog;Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 19
    :cond_0
    return-void
.end method

.method public setFlagUserInfo(ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->userId:Ljava/lang/String;

    iput p1, p0, Lcom/narvii/flag/report/FlagRequestDialog;->communityId:I

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
