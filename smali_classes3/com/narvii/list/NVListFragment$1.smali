.class Lcom/narvii/list/NVListFragment$1;
.super Ljava/lang/Object;
.source "NVListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public dismissScrollBarRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/list/NVListFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    iput-object p2, p0, Lcom/narvii/list/NVListFragment$1;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 295
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-static {p1}, Lcom/narvii/list/NVListFragment;->access$000(Lcom/narvii/list/NVListFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 298
    :try_start_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 299
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to hide keyboard"

    .line 303
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    invoke-static {p1}, Lcom/narvii/list/NVListFragment;->access$100(Lcom/narvii/list/NVListFragment;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 310
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 311
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->val$list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 316
    :cond_2
    new-instance p1, Lcom/narvii/list/NVListFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListFragment$1$1;-><init>(Lcom/narvii/list/NVListFragment$1;)V

    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    .line 322
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 326
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    iget-object p1, p1, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/narvii/logging/ImpressionDelegate;->onScrollIdleStateChanged(Z)V

    return-void
.end method
