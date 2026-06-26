.class public Lcom/narvii/livelayer/MemberOnPageFragment;
.super Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.source "MemberOnPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;
    }
.end annotation


# instance fields
.field liveLayerService:Lcom/narvii/livelayer/LiveLayerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 74
    new-instance v0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;-><init>(Lcom/narvii/livelayer/MemberOnPageFragment;)V

    .line 75
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v1, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    const/4 p1, 0x3

    .line 76
    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 78
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 81
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "title"

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f0f0afa

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "liveLayer"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "pageBackgroundColor"

    .line 48
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    const v0, 0x7f09013d

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    const/16 v1, 0x99

    .line 52
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {v1, v2, v3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 53
    invoke-virtual {v0, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    const p2, 0x7f09032b

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
