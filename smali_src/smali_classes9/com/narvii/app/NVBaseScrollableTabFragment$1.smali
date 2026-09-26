.class Lcom/narvii/app/NVBaseScrollableTabFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVBaseScrollableTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    move-object v1, p1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/logging/PageRefererInfo;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->setPageRefererInfo(Lcom/narvii/logging/PageRefererInfo;)V

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 44
    .line 45
    iput-object p1, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 46
    :cond_1
    return-void
.end method
