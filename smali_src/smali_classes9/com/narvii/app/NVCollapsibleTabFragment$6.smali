.class Lcom/narvii/app/NVCollapsibleTabFragment$6;
.super Lcom/narvii/app/NVScrollablePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVCollapsibleTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVCollapsibleTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$6;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$6;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Lcom/narvii/app/NVCollapsibleTabFragment;->onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V

    .line 10
    return-object v0
.end method
