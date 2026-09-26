.class Lcom/narvii/community/request/RequestJoinCommunityDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    rsub-int v0, v0, 0x1f4

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 22
    move-result p1

    .line 23
    .line 24
    rsub-int p1, p1, 0x1f4

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->tvLeftCount:Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/high16 v2, -0x10000

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_1
    const v2, -0x333334

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$4;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnRequestSubmit:Landroid/widget/Button;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    xor-int/2addr v0, v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 57
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
