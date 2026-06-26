.class Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;
.super Ljava/lang/Object;
.source "CaptionEditTextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$2;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->access$000(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;)V

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
