.class public Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SROverlayTabFragment.java"


# static fields
.field private static final INDEX_MAIN:I = 0x0

.field private static final INDEX_PLACE_HOLDER:I = 0x1


# instance fields
.field avMainLayout:Landroid/view/View;

.field onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

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

    .line 87
    :cond_0
    const-class p1, Lcom/narvii/chat/video/overlay/VideoOverLayPlaceHolderFragment;

    return-object p1

    .line 85
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

    .line 94
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e8

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->avMainLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setTouchEventPassView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public setAvMainLayout(Landroid/view/View;)V
    .locals 1

    .line 38
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->avMainLayout:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setTouchEventPassView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 32
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayTabFragment;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    .line 62
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V

    :cond_0
    return-void
.end method
