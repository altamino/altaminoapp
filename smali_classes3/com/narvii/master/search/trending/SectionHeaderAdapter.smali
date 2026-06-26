.class public Lcom/narvii/master/search/trending/SectionHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SectionHeaderAdapter.kt"


# instance fields
.field private host:Lcom/narvii/list/NVAdapter;

.field private final titleStrId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->titleStrId:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public final getHost$Amino_bundle()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b0431

    .line 29
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView(R.layout.item\u2026der, parent, convertView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f090b9a

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "title"

    .line 31
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->titleStrId:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final setAttachHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
