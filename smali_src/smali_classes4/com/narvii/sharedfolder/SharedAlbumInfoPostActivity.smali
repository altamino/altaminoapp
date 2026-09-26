.class public Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BasePostActivity<",
        "Lcom/narvii/sharedfolder/AlbumInfoPost;",
        ">;"
    }
.end annotation


# static fields
.field public static final REQUEST_CHANGE_COVER:I = 0x1


# instance fields
.field cover:Lcom/narvii/widget/NVImageView;

.field deleteButton:Landroid/widget/TextView;

.field description:Landroid/widget/EditText;

.field descriptionCounter:Landroid/widget/TextView;

.field lockerView:Landroid/view/View;

.field post:Lcom/narvii/sharedfolder/AlbumInfoPost;

.field title:Landroid/widget/EditText;

.field titleCounter:Landroid/widget/TextView;

.field toggle:Landroid/widget/CheckBox;

.field private user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    .line 4
    return-void
.end method

.method private anyChanges()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 4
    .line 5
    const-string v0, "post"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return v1

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/narvii/sharedfolder/AlbumInfoPost;->isSame(Lcom/narvii/post/PostObject;)Z

    .line 27
    move-result v0

    .line 28
    xor-int/2addr v0, v1

    .line 29
    return v0
.end method


# virtual methods
.method protected checkEligible()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->checkEligible()V

    .line 4
    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->doPost(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/sharedfolder/AlbumInfoPost;)V
    .locals 3

    const-string v0, "folderId"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/shared-folder/folders"

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-class v2, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public isEdit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_2

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    if-eqz p3, :cond_2

    .line 10
    .line 11
    const-string p1, "photo"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class p2, Lcom/narvii/model/SharedFile;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 24
    .line 25
    new-instance p2, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 39
    .line 40
    iput-object p2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->anyChanges()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f1203fe

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f12103a

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f120340

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCancelText(I)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0644

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a03cf

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->cover:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0e9e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/EditText;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0ead

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->titleCounter:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a039d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/EditText;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0423

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->descriptionCounter:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a00f1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->deleteButton:Landroid/widget/TextView;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0ec3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Landroid/widget/CheckBox;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    .line 90
    .line 91
    .line 92
    const v0, 0x7f0a00f3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->lockerView:Landroid/view/View;

    .line 99
    .line 100
    const-class v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 101
    .line 102
    const-string v1, "post"

    .line 103
    .line 104
    if-nez p1, :cond_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 130
    .line 131
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 132
    .line 133
    if-nez p1, :cond_1

    .line 134
    .line 135
    new-instance p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 136
    .line 137
    .line 138
    invoke-direct {p1}, Lcom/narvii/sharedfolder/AlbumInfoPost;-><init>()V

    .line 139
    .line 140
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 141
    .line 142
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    .line 143
    .line 144
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->titleCounter:Landroid/widget/TextView;

    .line 147
    .line 148
    const/16 v2, 0x1e

    .line 149
    const/4 v3, 0x0

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;Landroid/widget/TextView;ILcom/narvii/sharedfolder/a;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    .line 158
    .line 159
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->descriptionCounter:Landroid/widget/TextView;

    .line 162
    .line 163
    const/16 v2, 0x8c

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;Landroid/widget/TextView;ILcom/narvii/sharedfolder/a;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    .line 172
    .line 173
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    .line 181
    const-string p1, "account"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->user:Lcom/narvii/model/User;

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    .line 199
    return-void
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :pswitch_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f1203a0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f1203a2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 42
    goto :goto_1

    .line 43
    :pswitch_1
    const/4 p1, 0x2

    .line 44
    .line 45
    new-array p1, p1, [I

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    .line 64
    const v2, 0x7f12126d

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 68
    .line 69
    aput v2, p1, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move v0, v3

    .line 72
    .line 73
    .line 74
    :goto_0
    const v2, 0x7f12020f

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 78
    .line 79
    aput v2, p1, v0

    .line 80
    .line 81
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;[I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 91
    :goto_1
    return-void

    .line 92
    nop

    .line 93
    .line 94
    .line 95
    :pswitch_data_0
    .packed-switch 0x7f0a00f0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "post"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/sharedfolder/AlbumInfoPost;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;
    .locals 2

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    .line 2
    iget-object v1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean v0, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->deleteButton:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    .line 6
    iget-object v3, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->cover:Lcom/narvii/widget/NVImageView;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/AlbumInfoPost;->getCoverImage()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->lockerView:Landroid/view/View;

    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->user:Lcom/narvii/model/User;

    .line 8
    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    .line 9
    iget p1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
