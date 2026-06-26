.class Lcom/narvii/list/NVListFragment$10;
.super Ljava/lang/Object;
.source "NVListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/narvii/list/NVListFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;ILjava/lang/String;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    iput p2, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    iput-object p3, p0, Lcom/narvii/list/NVListFragment$10;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1278
    iput p1, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1282
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1285
    iget-object v1, p0, Lcom/narvii/list/NVListFragment$10;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1286
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    if-gt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/narvii/list/NVListFragment$10;->val$pos:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    if-ge v2, v4, :cond_3

    add-int v6, v2, v3

    if-ge v6, v5, :cond_3

    if-ltz v3, :cond_3

    .line 1289
    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1290
    instance-of v8, v7, Lcom/narvii/model/NVObject;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/narvii/model/NVObject;

    invoke-virtual {v7}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/narvii/list/NVListFragment$10;->val$id:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1291
    instance-of v7, v0, Lcom/narvii/widget/NVListView;

    if-eqz v7, :cond_1

    .line 1292
    move-object v7, v0

    check-cast v7, Lcom/narvii/widget/NVListView;

    invoke-virtual {v7, v6}, Lcom/narvii/widget/NVListView;->startBlinkLong(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    iget v0, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/list/NVListFragment$10;->count:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    const-wide/16 v0, 0x64

    .line 1297
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method
