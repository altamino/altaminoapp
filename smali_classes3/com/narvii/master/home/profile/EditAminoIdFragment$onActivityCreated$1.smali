.class public final Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "EditAminoIdFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 85
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$onActivityCreated$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$updateView(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V

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
