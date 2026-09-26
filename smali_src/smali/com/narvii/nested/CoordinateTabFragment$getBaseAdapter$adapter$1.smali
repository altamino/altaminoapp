.class public final Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V

    .line 13
    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "container"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "instantiateItem(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 34
    move-result-object p2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    .line 38
    :goto_0
    check-cast p2, Lcom/narvii/app/NVFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/narvii/nested/CoordinateTabFragment;->setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V

    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 47
    return-object p1
.end method
