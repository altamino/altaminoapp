.class public Lcom/narvii/catalog/CatalogWrapperActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# instance fields
.field private goldTheme:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getCustomTheme()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f130013

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v1, "uid"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "mine"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "fromUrl"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string v1, "isAllEntry"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/narvii/catalog/CatalogWrapperActivity;->goldTheme:Z

    .line 45
    .line 46
    .line 47
    const v0, 0x7f130012

    .line 48
    :cond_0
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/DrawerActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/catalog/CatalogWrapperActivity;->goldTheme:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f060131

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0079

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0803b7

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    const v1, 0x7f0a0084

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public setStatusBar()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x98

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    .line 6
    return-void
.end method
