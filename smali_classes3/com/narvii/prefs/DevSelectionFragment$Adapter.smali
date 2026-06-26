.class final Lcom/narvii/prefs/DevSelectionFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "DevSelectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/DevSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/DevSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/prefs/model/DevOption;->options:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {v0}, Lcom/narvii/prefs/DevSelectionFragment;->access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/prefs/model/DevOption;->options:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0614

    .line 106
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/widget/FrameLayout;

    const p3, 0x7f090b5b

    .line 107
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f09020f

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tv"

    .line 110
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "check"

    .line 111
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p3}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance p3, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;-><init>(Lcom/narvii/prefs/DevSelectionFragment$Adapter;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 106
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
