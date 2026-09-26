.class Lcom/narvii/amino/HomeFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/amino/HomeFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$2$1;->this$1:Lcom/narvii/amino/HomeFragment$2;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment$2;->this$0:Lcom/narvii/amino/HomeFragment;

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
    :cond_0
    return-void
.end method
