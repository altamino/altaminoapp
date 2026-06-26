.class public final Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;
.super Ljava/lang/Object;
.source "BaseSingleEditFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/BaseSingleEditFragment;->observeTextChanged(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/BaseSingleEditFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 83
    iget-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->updateView()V

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
