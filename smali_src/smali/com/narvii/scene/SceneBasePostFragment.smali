.class public abstract Lcom/narvii/scene/SceneBasePostFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# static fields
.field public static BACKGROUND:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deleteIV:Landroid/widget/ImageView;

.field protected draftDir:Ljava/io/File;

.field protected frameHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected abstract canSubmit()Z
.end method

.method protected abstract doSubmit()V
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected abstract getPostObjectType()I
.end method

.method protected abstract isContentEmpty()Z
.end method

.method protected abstract isModified()Z
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->isModified()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    sget v0, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/scene/SceneBasePostFragment$3;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneBasePostFragment$3;-><init>(Lcom/narvii/scene/SceneBasePostFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 33
    return v1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const/16 v0, 0x13

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    :cond_0
    const-string p1, "outputFileDir"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    new-instance v0, Ljava/io/File;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    .line 63
    new-instance p1, Ljava/io/File;

    .line 64
    .line 65
    const-string/jumbo v1, "scene_intermediate_file"

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    sget v0, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 30
    return-void
.end method

.method protected onFrameHeightChanged()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->doSubmit()V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected onPostDeleted()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->canSubmit()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0xff

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const/16 v0, 0x82

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->isContentEmpty()Z

    .line 42
    move-result p1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->trash_bin_disable:I

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->trash_bin_enable:I

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    .line 57
    .line 58
    xor-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    sget p2, Lcom/narvii/mediaeditor/R$id;->bg:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    sget v0, Lcom/narvii/mediaeditor/R$id;->delete_container:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 33
    .line 34
    const-string v1, "editRemote"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "coverImageUrl"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    sget-object v1, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p0, p2, v0}, Lcom/narvii/scene/SceneBasePostFragment$1;-><init>(Lcom/narvii/scene/SceneBasePostFragment;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    .line 75
    :cond_1
    sget p2, Lcom/narvii/mediaeditor/R$id;->delete_iv:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Landroid/widget/ImageView;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    new-instance p2, Lcom/narvii/scene/SceneBasePostFragment$2;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/narvii/scene/SceneBasePostFragment$2;-><init>(Lcom/narvii/scene/SceneBasePostFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_2
    return-void
.end method
