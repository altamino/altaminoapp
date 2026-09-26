.class public final Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/home/profile/BaseSingleEditFragment$observeTextChanged$1;->this$0:Lcom/narvii/master/home/profile/BaseSingleEditFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->updateView()V

    .line 11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
