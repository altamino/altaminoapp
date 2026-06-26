.class public Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/BasePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearErrorWatcher"
.end annotation


# instance fields
.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 536
    new-instance p1, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;

    invoke-direct {p1, p0}, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;-><init>(Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

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
