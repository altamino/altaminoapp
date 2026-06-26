.class Lcom/narvii/chat/input/ChatInputFragment$5;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_CHARACTER:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    .line 431
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    const/16 p5, 0x7d0

    rsub-int p4, p4, 0x7d0

    sub-int/2addr p3, p2

    const/4 p6, 0x0

    if-ge p4, p3, :cond_0

    .line 434
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 435
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const v2, 0x7f0f0220

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p5, 0x7f0f073e

    .line 436
    invoke-virtual {v0, p5, p6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 437
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    const-string p5, ""

    if-gtz p4, :cond_1

    return-object p5

    :cond_1
    if-lt p4, p3, :cond_2

    return-object p6

    :cond_2
    add-int/2addr p4, p2

    add-int/lit8 p3, p4, -0x1

    .line 446
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_3

    add-int/lit8 p4, p4, -0x1

    if-ne p4, p2, :cond_3

    return-object p5

    .line 452
    :cond_3
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
