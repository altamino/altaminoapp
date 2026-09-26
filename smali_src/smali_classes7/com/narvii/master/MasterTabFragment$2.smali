.class Lcom/narvii/master/MasterTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/master/MasterTabFragment;->x(Lcom/narvii/master/MasterTabFragment;I)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->updateTabBottomLayout(I)V

    .line 27
    .line 28
    :cond_1
    new-instance v0, Lcom/narvii/master/MasterTabFragment$2$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/narvii/master/MasterTabFragment$2$1;-><init>(Lcom/narvii/master/MasterTabFragment$2;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method
