.class public Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"


# static fields
.field private static final INDEX_MAIN:I = 0x0

.field private static final INDEX_PLACE_HOLDER:I = 0x1


# instance fields
.field avMainLayout:Landroid/view/View;

.field onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;


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
.method public defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p1, Lcom/narvii/chat/video/overlay/VideoOverLayPlaceHolderFragment;

    return-object p1

    :cond_1
    const-class p1, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "holder"

    return-object p1

    :cond_1
    const-string p1, "main"

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    return-object p1
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object v0
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
    .line 3
    const p3, 0x7f0d031d

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->avMainLayout:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setTouchEventPassView(Landroid/view/View;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    return-void
.end method

.method public setAvMainLayout(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->avMainLayout:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setTouchEventPassView(Landroid/view/View;)V

    .line 10
    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 10
    :cond_0
    return-void
.end method

.method public setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 10
    :cond_0
    return-void
.end method
