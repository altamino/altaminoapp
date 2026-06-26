.class final Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;
.super Ljava/lang/Object;
.source "SearchHistoryDelegate.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/history/SearchHistoryDelegate;->showDeleteSearchHistoryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-static {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->access$getPrefsHelper$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/SearchPrefsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchPrefsHelper;->clearSearchHistoryList()V

    .line 56
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$showDeleteSearchHistoryDialog$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-static {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->access$getSearchHistoryAdapter$p(Lcom/narvii/master/search/history/SearchHistoryDelegate;)Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->refreshList()V

    :cond_0
    return-void
.end method
