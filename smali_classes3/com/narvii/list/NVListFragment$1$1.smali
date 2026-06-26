.class Lcom/narvii/list/NVListFragment$1$1;
.super Ljava/lang/Object;
.source "NVListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment$1;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/list/NVListFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment$1;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1$1;->this$1:Lcom/narvii/list/NVListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$1$1;->this$1:Lcom/narvii/list/NVListFragment$1;

    iget-object v0, v0, Lcom/narvii/list/NVListFragment$1;->val$list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method
