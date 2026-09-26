.class public Lcom/narvii/video/attachment/caption/CaptionTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/attachment/caption/CaptionEditListener;
.implements Lcom/narvii/video/attachment/ResetAttachmentViewsListener;


# static fields
.field public static final INDEX_COLOR:I = 0x0

.field public static final INDEX_FONT:I = 0x2

.field public static final INDEX_STYLE:I = 0x1


# instance fields
.field private caption:Lcom/narvii/video/model/Caption;

.field public captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

.field public captionTabChangeListener:Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;

.field public editCaptionTextHost:Lcom/narvii/video/attachment/caption/EditCaptionTextHost;

.field public fragmentDismissListener:Lcom/narvii/app/FragmentDismissListener;

.field private originalCaption:Lcom/narvii/video/model/Caption;

.field public resetAttachmentViewsListener:Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

.field public shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dismiss(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionTabChangeListener:Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->originalCaption:Lcom/narvii/video/model/Caption;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;->revertCaption(Lcom/narvii/video/model/Caption;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->fragmentDismissListener:Lcom/narvii/app/FragmentDismissListener;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p0}, Lcom/narvii/app/FragmentDismissListener;->onFragmentDismiss(Landroidx/fragment/app/Fragment;)V

    .line 41
    :cond_1
    return-void
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "fontPath"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "fontObjectId"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "styleId"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "styleObjectId"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 68
    .line 69
    iget v0, v0, Lcom/narvii/video/model/Caption;->textColor:I

    .line 70
    .line 71
    const-string v1, "color"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    return-object p1
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    const-class p1, Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_1
    const-string p1, "fragmentRegister"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/app/FragmentRegister;

    .line 22
    .line 23
    const-string v0, "captionStyle"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/app/FragmentRegister;->getFragmentClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_2
    const-class p1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    .line 31
    return-object p1
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_font_selected:I

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_style_selected:I

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_color_selected:I

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public getShareDataSourceHost()Lcom/narvii/util/ShareDataSourceHost;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    return-object v0
.end method

.method public getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/util/ShareDataSourceHost;->getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const-string p1, "PlaceHolder"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget v0, Lcom/narvii/mediaeditor/R$layout;->caption_tab_item:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    return-object p1
.end method

.method public onColorChanged(IIZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onColorChanged(IIZ)V

    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "caption"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/video/model/Caption;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/video/model/Caption;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->originalCaption:Lcom/narvii/video/model/Caption;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/video/model/Caption;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_tab:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onFontChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/mediaeditor/R$id;->caption_tab_keyboard:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroid/widget/ImageView;

    .line 18
    .line 19
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_keyboard:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAttachedViewId(I)V

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    iput-boolean v0, p2, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 46
    .line 47
    sget p2, Lcom/narvii/mediaeditor/R$id;->close:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    sget p2, Lcom/narvii/mediaeditor/R$id;->submit:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionTabFragment$3;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$3;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public resetViewsWhenEditing()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->resetAttachmentViewsListener:Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;->resetViewsWhenEditing()V

    .line 8
    :cond_0
    return-void
.end method

.method public setCaptionColor(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 5
    move-result v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    instance-of v2, v1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v1, v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->setTextColor(I)V

    .line 33
    :cond_0
    return-void
.end method

.method public setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/util/ShareDataSourceHost;->setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V

    .line 8
    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xcacac5

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method
