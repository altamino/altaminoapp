.class Lcom/narvii/account/LoginOrSignupFragment$6;
.super Ljava/lang/Object;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginOrSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginOrSignupFragment;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$6;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$6;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/account/LoginOrSignupFragment;->pendingStart:Z

    return-void
.end method
