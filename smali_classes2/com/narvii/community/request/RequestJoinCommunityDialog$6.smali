.class Lcom/narvii/community/request/RequestJoinCommunityDialog$6;
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

    .line 306
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$6;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object v0, v0, Lcom/narvii/community/request/RequestJoinCommunityDialog;->btnInviteSubmit:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

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
