.class public Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;
.super Lcom/narvii/post/BasePostActivity;
.source "SharedAlbumInfoPostActivity.java"


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

    .line 42
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity;-><init>()V

    return-void
.end method

.method private anyChanges()Z
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;

    const-string v0, "post"

    .line 185
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {v0, v2}, Lcom/narvii/sharedfolder/AlbumInfoPost;->isSame(Lcom/narvii/post/PostObject;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected checkEligible()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->checkEligible()V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->doPost(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/sharedfolder/AlbumInfoPost;)V
    .locals 3

    const-string v0, "folderId"

    .line 200
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/shared-folder/folders"

    if-eqz v0, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_0
    new-instance v0, Lcom/narvii/post/PostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 206
    invoke-virtual {v0, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 207
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 208
    const-class v2, Lcom/narvii/sharedfolder/SharedAlbumResponse;

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

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    const-string p1, "photo"

    .line 217
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/SharedFile;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 218
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    return-void

    .line 222
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->media:Lcom/narvii/model/Media;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iput-object p2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 224
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->anyChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03a4

    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f0f28

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f02ef

    .line 163
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCancelText(I)V

    .line 164
    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;

    invoke-direct {v1, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    const-class v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0b059c

    .line 72
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const v1, 0x7f0902fc

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->cover:Lcom/narvii/widget/NVImageView;

    const v1, 0x7f090b9a

    .line 76
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    const v1, 0x7f090b9f

    .line 77
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->titleCounter:Landroid/widget/TextView;

    const v1, 0x7f0902d0

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    const v1, 0x7f090343

    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->descriptionCounter:Landroid/widget/TextView;

    const v1, 0x7f09008a

    .line 80
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->deleteButton:Landroid/widget/TextView;

    const v1, 0x7f090bac

    .line 81
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    const v1, 0x7f09008c

    .line 82
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->lockerView:Landroid/view/View;

    const-string v1, "post"

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    if-nez p1, :cond_1

    .line 89
    new-instance p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-direct {p1}, Lcom/narvii/sharedfolder/AlbumInfoPost;-><init>()V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->titleCounter:Landroid/widget/TextView;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;Landroid/widget/TextView;ILcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->descriptionCounter:Landroid/widget/TextView;

    const/16 v2, 0x8c

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;Landroid/widget/TextView;ILcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string p1, "account"

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 101
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->user:Lcom/narvii/model/User;

    .line 103
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 4

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 234
    :pswitch_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0348

    .line 235
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f034a

    .line 236
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 237
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 267
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 272
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 273
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object v2, v2, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x7f0f1164

    .line 274
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    aput v2, p1, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7f0f01c0

    .line 277
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 278
    aput v2, p1, v0

    .line 279
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;-><init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;[I)V

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090089
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 60
    const-class v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/sharedfolder/AlbumInfoPost;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/narvii/sharedfolder/AlbumInfoPost;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/sharedfolder/AlbumInfoPost;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-boolean v0, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->title:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->deleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->description:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->cover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/AlbumInfoPost;->getCoverImage()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 145
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->lockerView:Landroid/view/View;

    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->user:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->toggle:Landroid/widget/CheckBox;

    iget p1, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
