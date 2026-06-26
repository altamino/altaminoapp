.class Lcom/narvii/community/request/RequestJoinCommunityDialog$4;
.super Ljava/lang/Object;
.source "RequestJoinCommunityDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/request/RequestJoinCommunityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 279
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    rsub-int v0, v0, 0x1f4

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object v2, v2, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    rsub-int p1, p1, 0x1f4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/high16 v2, -0x10000

    goto :goto_1

    :cond_1
    const v2, -0x333334

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnRequestSubmit:Landroid/widget/Button;

    if-eqz p1, :cond_3

    xor-int/2addr v0, v1

    .line 285
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
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
