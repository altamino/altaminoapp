.class public Lcom/narvii/video/attachment/caption/CaptionTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "CaptionTabFragment.java"

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

    .line 25
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

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

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionTabChangeListener:Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->originalCaption:Lcom/narvii/video/model/Caption;

    invoke-interface {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;->revertCaption(Lcom/narvii/video/model/Caption;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 188
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->fragmentDismissListener:Lcom/narvii/app/FragmentDismissListener;

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1, p0}, Lcom/narvii/app/FragmentDismissListener;->onFragmentDismiss(Landroid/support/v4/app/Fragment;)V

    :cond_1
    return-void
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-object v0, v0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    const-string v1, "fontPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-object v0, v0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    const-string v1, "fontObjectId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 112
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-object v0, v0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    const-string v1, "styleId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-object v0, v0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    const-string v1, "styleObjectId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 108
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget v0, v0, Lcom/narvii/video/model/Caption;->textColor:I

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    const-class p1, Lcom/narvii/video/attachment/caption/CaptionFontFragment;

    return-object p1

    :cond_1
    const-string p1, "fragmentRegister"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentRegister;

    const-string v0, "captionStyle"

    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/app/FragmentRegister;->getFragmentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 64
    :cond_2
    const-class p1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    return-object p1
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_font_selected:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_style_selected:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_color_selected:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getShareDataSourceHost()Lcom/narvii/util/ShareDataSourceHost;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    return-object v0
.end method

.method public getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1}, Lcom/narvii/util/ShareDataSourceHost;->getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

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

    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->caption_tab_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 176
    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 177
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onColorChanged(IIZ)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onColorChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    const-class v0, Lcom/narvii/video/model/Caption;

    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "caption"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/Caption;

    iput-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->originalCaption:Lcom/narvii/video/model/Caption;

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/Caption;

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->caption:Lcom/narvii/video/model/Caption;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 95
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_caption_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onFontChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    return-void
.end method

.method public onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    sget p2, Lcom/narvii/mediaeditor/R$id;->caption_tab_keyboard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 129
    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_caption_keyboard:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setIndicatorAttachedViewId(I)V

    .line 140
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    .line 141
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 143
    sget p2, Lcom/narvii/mediaeditor/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$2;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget p2, Lcom/narvii/mediaeditor/R$id;->submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/video/attachment/caption/CaptionTabFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment$3;-><init>(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetViewsWhenEditing()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->resetAttachmentViewsListener:Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lcom/narvii/video/attachment/ResetAttachmentViewsListener;->resetViewsWhenEditing()V

    :cond_0
    return-void
.end method

.method public setCaptionColor(I)V
    .locals 3

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 159
    instance-of v2, v1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    if-eqz v2, :cond_0

    .line 160
    check-cast v1, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 161
    instance-of v1, v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    .line 163
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorFragment;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1, p2}, Lcom/narvii/util/ShareDataSourceHost;->setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V

    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 100
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xcacac5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method
