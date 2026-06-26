.class Lcom/narvii/account/EmailSignupFragment$1;
.super Ljava/lang/Object;
.source "EmailSignupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/EmailSignupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/EmailSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/EmailSignupFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-static {v0}, Lcom/narvii/account/EmailSignupFragment;->access$000(Lcom/narvii/account/EmailSignupFragment;)Lcom/narvii/widget/AutoCompleteEmailView;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
