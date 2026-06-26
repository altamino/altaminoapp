.class Lcom/narvii/app/NVBaseScrollableTabFragment$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NVBaseScrollableTabFragment.java"


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

    .line 62
    iput-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 66
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    iget-object v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    move-object v1, p1

    check-cast v1, Lcom/narvii/app/NVFragment;

    new-instance v2, Lcom/narvii/logging/PageRefererInfo;

    invoke-direct {v2, v0}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->setPageRefererInfo(Lcom/narvii/logging/PageRefererInfo;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVBaseScrollableTabFragment;

    check-cast p1, Lcom/narvii/app/NVFragment;

    iput-object p1, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    :cond_1
    return-void
.end method
