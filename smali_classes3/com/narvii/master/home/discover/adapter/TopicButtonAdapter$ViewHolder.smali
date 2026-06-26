.class public final Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "TopicButtonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V
    .locals 1
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget p1, Lcom/narvii/amino/R$id;->count_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "itemView.count_text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 62
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 63
    new-instance p1, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getText()Landroid/widget/TextView;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->text:Landroid/widget/TextView;

    return-object v0
.end method
