.class public Lcom/narvii/catalog/CatalogWrapperActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "CatalogWrapperActivity.java"


# instance fields
.field private goldTheme:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 2

    .line 19
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getCustomTheme()I

    move-result v0

    const v1, 0x7f100012

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "uid"

    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mine"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fromUrl"

    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "isAllEntry"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/narvii/catalog/CatalogWrapperActivity;->goldTheme:Z

    const v0, 0x7f100011

    :cond_0
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/app/DrawerActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 33
    iget-boolean p1, p0, Lcom/narvii/catalog/CatalogWrapperActivity;->goldTheme:Z

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600eb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBar()V
    .locals 1

    const/16 v0, 0x98

    .line 43
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    return-void
.end method
