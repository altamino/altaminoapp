.class Lcom/narvii/list/NVListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/NVListFragment$1;->val$list:Landroid/widget/ListView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/list/NVListFragment;->r(Lcom/narvii/list/NVListFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "input_method"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    .line 43
    const-string v0, "fail to hide keyboard"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/list/NVListFragment;->s(Lcom/narvii/list/NVListFragment;)Z

    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    const/4 p1, 0x0

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->val$list:Landroid/widget/ListView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_2
    new-instance p1, Lcom/narvii/list/NVListFragment$1$1;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/narvii/list/NVListFragment$1$1;-><init>(Lcom/narvii/list/NVListFragment$1;)V

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/list/NVListFragment$1;->dismissScrollBarRunnable:Ljava/lang/Runnable;

    .line 83
    .line 84
    const-wide/16 v1, 0xc8

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 88
    .line 89
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment$1;->this$0:Lcom/narvii/list/NVListFragment;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 92
    .line 93
    if-nez p2, :cond_4

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const/4 v0, 0x0

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-virtual {p1, v0}, Lcom/narvii/logging/ImpressionDelegate;->onScrollIdleStateChanged(Z)V

    .line 99
    return-void
.end method
