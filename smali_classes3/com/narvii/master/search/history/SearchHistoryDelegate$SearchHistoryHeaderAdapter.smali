.class public final Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SearchHistoryDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/history/SearchHistoryDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchHistoryHeaderAdapter"
.end annotation


# instance fields
.field private host:Lcom/narvii/list/NVAdapter;

.field private onClearSearch:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getHost()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getOnClearSearch()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->onClearSearch:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b03dc

    .line 70
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.item\u2026der, parent, convertView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f090b9a

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "title"

    .line 72
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f0e9c

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090251

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1;

    invoke-direct {p3, p0}, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter$getView$1;-><init>(Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final setHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setOnClearSearch(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/narvii/master/search/history/SearchHistoryDelegate$SearchHistoryHeaderAdapter;->onClearSearch:Lkotlin/jvm/functions/Function0;

    return-void
.end method
