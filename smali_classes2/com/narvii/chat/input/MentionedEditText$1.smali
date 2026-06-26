.class Lcom/narvii/chat/input/MentionedEditText$1;
.super Ljava/lang/Object;
.source "MentionedEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/MentionedEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/MentionedEditText;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/MentionedEditText;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$1;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$1;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
