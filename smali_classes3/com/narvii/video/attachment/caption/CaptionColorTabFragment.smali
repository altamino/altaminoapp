.class public Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "CaptionColorTabFragment.java"

# interfaces
.implements Lcom/narvii/video/attachment/caption/CaptionEditListener;


# static fields
.field public static final SHADOW_COLOR:I = 0x2

.field public static final STROKE_COLOR:I = 0x1

.field public static final TEXT_COLOR:I


# instance fields
.field private caption:Lcom/narvii/video/model/Caption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 7

    const-string v0, "type"

    const-string v1, "enabled"

    const-string v2, "color"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    const-string v4, "supportDisable"

    const/4 v5, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 116
    iget-object v5, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget v5, v5, Lcom/narvii/video/model/Caption;->shadowColor:I

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x3

    .line 117
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-boolean v0, v0, Lcom/narvii/video/model/Caption;->hasShadow:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    .line 108
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget-object v6, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget v6, v6, Lcom/narvii/video/model/Caption;->strokeColor:I

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget-boolean v0, v0, Lcom/narvii/video/model/Caption;->hasStroke:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    .line 102
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-object v4, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    iget v4, v4, Lcom/narvii/video/model/Caption;->textColor:I

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .line 94
    const-class p1, Lcom/narvii/video/attachment/caption/CaptionColorFragment;

    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 51
    sget p1, Lcom/narvii/mediaeditor/R$string;->text:I

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 54
    sget p1, Lcom/narvii/mediaeditor/R$string;->stroke:I

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 57
    sget p1, Lcom/narvii/mediaeditor/R$string;->shadow:I

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->caption_color_tab_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    sget v0, Lcom/narvii/mediaeditor/R$id;->tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onColorChanged(IIZ)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionEditListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/attachment/caption/CaptionEditListener;->onColorChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "caption"

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/video/model/Caption;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/Caption;

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorTabFragment;->caption:Lcom/narvii/video/model/Caption;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_tab_caption_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 144
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 6

    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    sget v3, Lcom/narvii/mediaeditor/R$id;->tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    sget v4, Lcom/narvii/mediaeditor/R$id;->indicator:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    if-ne v1, p1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 79
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v5, 0x1

    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 81
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v5, 0x3f19999a    # 0.6f

    .line 83
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 84
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x4

    .line 85
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
