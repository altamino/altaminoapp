.class final Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1;
.super Ljava/lang/Object;
.source "SearchHistoryDelegate.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1;->this$0:Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->getOnClearSearch()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
