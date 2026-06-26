.class public abstract Lcom/narvii/scene/SceneBasePostFragment;
.super Lcom/narvii/app/NVFragment;
.source "SceneBasePostFragment.java"

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

    .line 36
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract canSubmit()Z
.end method

.method protected abstract doSubmit()V
.end method

.method public getCustomTheme()I
    .locals 1

    .line 44
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

    .line 180
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->isModified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 182
    sget v0, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 183
    new-instance v0, Lcom/narvii/scene/SceneBasePostFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneBasePostFragment$3;-><init>(Lcom/narvii/scene/SceneBasePostFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 194
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 52
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_actionbar_close:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string p1, "outputFileDir"

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    new-instance p1, Ljava/io/File;

    const-string v1, "scene_intermediate_file"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    .line 60
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 66
    sget p2, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 68
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onFrameHeightChanged()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->doSubmit()V

    const/4 p1, 0x1

    return p1

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostDeleted()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->canSubmit()Z

    move-result v0

    .line 76
    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 77
    sget v1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/narvii/scene/SceneBasePostFragment;->isContentEmpty()Z

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->trash_bin_disable:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->trash_bin_enable:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 100
    sget p2, Lcom/narvii/mediaeditor/R$id;->bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 101
    sget v0, Lcom/narvii/mediaeditor/R$id;->delete_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const-string v1, "editRemote"

    .line 104
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "coverImageUrl"

    .line 105
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 107
    :cond_0
    sget-object v1, Lcom/narvii/scene/SceneBasePostFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/narvii/scene/SceneBasePostFragment$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/narvii/scene/SceneBasePostFragment$1;-><init>(Lcom/narvii/scene/SceneBasePostFragment;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 137
    :cond_1
    sget p2, Lcom/narvii/mediaeditor/R$id;->delete_iv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    .line 138
    iget-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment;->deleteIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 139
    new-instance p2, Lcom/narvii/scene/SceneBasePostFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/scene/SceneBasePostFragment$2;-><init>(Lcom/narvii/scene/SceneBasePostFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
