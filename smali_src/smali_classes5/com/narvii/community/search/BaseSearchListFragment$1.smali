.class Lcom/narvii/community/search/BaseSearchListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/search/BaseSearchListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/search/BaseSearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/community/search/BaseSearchListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment$1;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment$1;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string p2, "input_method"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment$1;->this$0:Lcom/narvii/community/search/BaseSearchListFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    .line 35
    const-string p2, "fail to hide keyboard"

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
