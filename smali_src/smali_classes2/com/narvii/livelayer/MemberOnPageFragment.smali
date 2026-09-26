.class public Lcom/narvii/livelayer/MemberOnPageFragment;
.super Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const/high16 v0, 0x41200000    # 10.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result p1

    .line 11
    float-to-int p1, p1

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;-><init>(Lcom/narvii/livelayer/MemberOnPageFragment;)V

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 22
    const/4 p1, 0x3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 37
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "title"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    const p1, 0x7f120ba8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    :goto_0
    const-string p1, "liveLayer"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 32
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "pageBackgroundColor"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result p2

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a01db

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 32
    move-result p2

    .line 33
    .line 34
    const/16 v3, 0x99

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v1, v2, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0404

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const/16 p2, 0x8

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    return-void
.end method
