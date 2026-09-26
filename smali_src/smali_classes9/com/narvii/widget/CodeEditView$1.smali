.class Lcom/narvii/widget/CodeEditView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/widget/CodeEditView;->d(Lcom/narvii/widget/CodeEditView;Z)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/widget/CodeEditView;->e(Lcom/narvii/widget/CodeEditView;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView$1;->this$0:Lcom/narvii/widget/CodeEditView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/widget/CodeEditView;->listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;->onCodeChanged(Ljava/lang/String;)V

    .line 31
    :cond_1
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
