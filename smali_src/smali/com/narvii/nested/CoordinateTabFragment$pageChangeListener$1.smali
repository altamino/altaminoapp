.class public final Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    .line 34
    return-void
.end method
