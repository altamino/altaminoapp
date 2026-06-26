.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;
.super Ljava/lang/Object;
.source "GlobalBioPostActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/GlobalBioPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalBioPostActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalBioPostActivity.kt\ncom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1\n*L\n1#1,189:1\n*E\n"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {v1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLineCount()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {v2}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getInputHint$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/500"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    const/16 v2, 0x1f4

    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    if-le v0, v2, :cond_5

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    if-ge v1, v2, :cond_2

    .line 79
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "editContent.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    invoke-interface {v0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    :cond_4
    if-ge v0, v3, :cond_5

    .line 82
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {v0}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$1;->text:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
