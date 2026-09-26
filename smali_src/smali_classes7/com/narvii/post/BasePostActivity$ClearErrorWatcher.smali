.class public Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;->text:Landroid/widget/TextView;

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/post/BasePostActivity$ClearErrorWatcher$1;-><init>(Lcom/narvii/post/BasePostActivity$ClearErrorWatcher;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
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
