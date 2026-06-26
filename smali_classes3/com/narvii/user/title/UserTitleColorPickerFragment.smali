.class public Lcom/narvii/user/title/UserTitleColorPickerFragment;
.super Lcom/narvii/media/color/BaseColorPickerFragment;
.source "UserTitleColorPickerFragment.java"


# instance fields
.field private titlePreview:Landroid/view/View;

.field private titlePreviewText:Landroid/widget/TextView;

.field private userTitle:Lcom/narvii/model/api/UserTitle;

.field private userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 3

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result v1

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result v2

    iput v2, v1, Lcom/narvii/model/api/UserTitle;->color:I

    .line 62
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method protected getDefaultColor()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    iget v1, v0, Lcom/narvii/model/api/UserTitle;->color:I

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0307

    return v0
.end method

.method protected onColorChanged(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    iget-object v1, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0xb5b5b6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    const-string p1, "userTitle"

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/api/UserTitle;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/UserTitle;

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 30
    iget-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    if-nez p1, :cond_0

    const-string p1, "user title not exist"

    .line 31
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090ba2

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    .line 53
    iget-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    const p2, 0x7f090ba4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorPickerFragment;->onColorChanged(I)V

    return-void
.end method
