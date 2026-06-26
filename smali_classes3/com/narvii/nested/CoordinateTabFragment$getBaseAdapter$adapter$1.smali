.class public final Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "CoordinateTabFragment.kt"


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
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 229
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    const-string v2, "f"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "super.instantiateItem(container, position)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentShowingFragment()Lcom/narvii/app/NVFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p2}, Lcom/narvii/nested/CoordinateTabFragment;->setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V

    .line 239
    :cond_1
    iget-object p2, p0, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    return-object p1
.end method
