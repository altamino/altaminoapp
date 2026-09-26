.class Lcom/narvii/amino/HomeFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/amino/HomeFragment$8;->c:I

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$8;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$8;->c:I

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/amino/HomeFragment$8;->c:I

    .line 49
    const/4 v1, 0x4

    .line 50
    .line 51
    if-ge v0, v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 55
    :cond_1
    :goto_0
    return-void
.end method
