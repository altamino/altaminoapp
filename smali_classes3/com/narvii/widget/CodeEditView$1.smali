.class Lcom/narvii/widget/CodeEditView$1;
.super Ljava/lang/Object;
.source "CodeEditView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CodeEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CodeEditView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CodeEditView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    invoke-static {v0, p1}, Lcom/narvii/widget/CodeEditView;->access$000(Lcom/narvii/widget/CodeEditView;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    iget-object v0, v0, Lcom/narvii/widget/CodeEditView;->listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;->onCodeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
