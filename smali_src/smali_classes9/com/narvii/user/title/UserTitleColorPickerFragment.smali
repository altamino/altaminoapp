.class public Lcom/narvii/user/title/UserTitleColorPickerFragment;
.super Lcom/narvii/media/color/BaseColorPickerFragment;
.source "SourceFile"


# instance fields
.field private titlePreview:Landroid/view/View;

.field private titlePreviewText:Landroid/widget/TextView;

.field private userTitle:Lcom/narvii/model/api/UserTitle;

.field private userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected doPickColor()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    const-string v1, "color"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iput v2, v1, Lcom/narvii/model/api/UserTitle;->color:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "userTitle"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/4 v1, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 42
    return-void
.end method

.method protected getDefaultColor()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/model/api/UserTitle;->color:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;->getTitleColor(Lcom/narvii/model/api/UserTitle;)I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0339

    return v0
.end method

.method protected onColorChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, -0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    const v1, -0xb5b5b6

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "userTitle"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-class v0, Lcom/narvii/model/api/UserTitle;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->userTitle:Lcom/narvii/model/api/UserTitle;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    .line 36
    const-string/jumbo p1, "user title not exist"

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 43
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/media/color/BaseColorPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0eb5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreview:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0eb7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleColorPickerFragment;->titlePreviewText:Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/media/color/BaseColorPickerFragment;->getColor()I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleColorPickerFragment;->onColorChanged(I)V

    .line 31
    return-void
.end method
