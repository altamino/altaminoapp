.class final Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;
.super Ljava/lang/Object;
.source "SearchHistoryDelegate.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->updateChildView(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $data:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iput-object p2, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object p1, p1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object p1, p1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/search/ISearchBarHost;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object p1, p1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/search/ISearchBarHost;

    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object v0, v0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    iget-object v1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->$data:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/narvii/search/ISearchBarHost;->onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;

    iget-object p1, p1, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getOnSearchHistory()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryAdapter$updateChildView$1;->$data:Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    return-void
.end method
