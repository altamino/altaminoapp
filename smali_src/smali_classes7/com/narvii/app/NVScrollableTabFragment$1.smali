.class Lcom/narvii/app/NVScrollableTabFragment$1;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVScrollableTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVScrollableTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVScrollableTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/LazyFragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/app/NVScrollableTabFragment$1;->this$0:Lcom/narvii/app/NVScrollableTabFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 10
    return-object p1
.end method
