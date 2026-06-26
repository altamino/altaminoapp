.class public Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;
.super Ljava/lang/Object;
.source "TopicEditFlowView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TopicEditFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaxTextLengthFilter"
.end annotation


# instance fields
.field private maxLength:I

.field final synthetic this$0:Lcom/narvii/widget/TopicEditFlowView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/TopicEditFlowView;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p2, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->maxLength:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 66
    iget v0, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->maxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    sub-int/2addr v0, p4

    sub-int/2addr p3, p2

    if-ge v0, p3, :cond_0

    .line 68
    iget-object p4, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p5

    sget p6, Lcom/narvii/lib/R$string;->topic_characters_limit:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p5, p6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-gtz v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    if-lt v0, p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    add-int/2addr v0, p2

    .line 75
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
