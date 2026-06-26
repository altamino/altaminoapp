.class public final Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "CoordinateTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 283
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 284
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    return-void
.end method
