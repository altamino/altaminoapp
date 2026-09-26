.class Lcom/narvii/chat/input/ChatInputFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p4

    .line 5
    sub-int/2addr p6, p5

    .line 6
    sub-int/2addr p4, p6

    .line 7
    .line 8
    const/16 p5, 0x7d0

    .line 9
    .line 10
    rsub-int p4, p4, 0x7d0

    .line 11
    sub-int/2addr p3, p2

    .line 12
    const/4 p6, 0x0

    .line 13
    .line 14
    if-ge p4, p3, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$5;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p5

    .line 36
    .line 37
    aput-object p5, v2, v3

    .line 38
    .line 39
    .line 40
    const p5, 0x7f120263

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p5}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const p5, 0x7f1207e7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p5, p6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 57
    .line 58
    :cond_0
    const-string p5, ""

    .line 59
    .line 60
    if-gtz p4, :cond_1

    .line 61
    return-object p5

    .line 62
    .line 63
    :cond_1
    if-lt p4, p3, :cond_2

    .line 64
    return-object p6

    .line 65
    :cond_2
    add-int/2addr p4, p2

    .line 66
    .line 67
    add-int/lit8 p3, p4, -0x1

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 71
    move-result p3

    .line 72
    .line 73
    .line 74
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 75
    move-result p3

    .line 76
    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    add-int/lit8 p4, p4, -0x1

    .line 80
    .line 81
    if-ne p4, p2, :cond_3

    .line 82
    return-object p5

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method
