.class public final Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$AllChatAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const/high16 v0, 0x40a00000    # 5.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result p1

    .line 11
    float-to-int v4, p1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/list/SectionDivideColumnAdapter;

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, p0

    .line 18
    move v2, v4

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/SectionDivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$AllChatAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$AllChatAdapter;-><init>(Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;)V

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment$createAdapter$datePagedAdapter$1;-><init>(Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/narvii/list/DatePagedAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    const/4 v0, 0x2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 39
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120fc1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 14
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    :goto_1
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    const-string p2, "config"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 41
    move-result p2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_2
    return-void
.end method
