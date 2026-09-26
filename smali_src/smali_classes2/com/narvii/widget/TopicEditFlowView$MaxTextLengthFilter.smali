.class public Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->maxLength:I

    .line 8
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->maxLength:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result p4

    .line 7
    sub-int/2addr p6, p5

    .line 8
    sub-int/2addr p4, p6

    .line 9
    sub-int/2addr v0, p4

    .line 10
    sub-int/2addr p3, p2

    .line 11
    .line 12
    if-ge v0, p3, :cond_0

    .line 13
    .line 14
    iget-object p4, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p4

    .line 19
    .line 20
    iget-object p5, p0, Lcom/narvii/widget/TopicEditFlowView$MaxTextLengthFilter;->this$0:Lcom/narvii/widget/TopicEditFlowView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p5

    .line 25
    .line 26
    sget p6, Lcom/narvii/lib/R$string;->topic_characters_limit:I

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const/16 v2, 0x1e

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5, p6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p5

    .line 43
    .line 44
    .line 45
    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    :cond_0
    if-gtz v0, :cond_1

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    return-object p1

    .line 51
    .line 52
    :cond_1
    if-lt v0, p3, :cond_2

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    :cond_2
    add-int/2addr v0, p2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
