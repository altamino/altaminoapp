.class public final Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "ShowAllStoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShowAllStoryViewHolder"
.end annotation


# instance fields
.field private final text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget v0, Lcom/narvii/amino/R$id;->count_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemView.count_text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->text:Landroid/widget/TextView;

    .line 62
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getText()Landroid/widget/TextView;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->text:Landroid/widget/TextView;

    return-object v0
.end method
