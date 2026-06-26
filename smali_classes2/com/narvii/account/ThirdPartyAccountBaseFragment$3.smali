.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;
.super Ljava/lang/Object;
.source "ThirdPartyAccountBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment;->handleAlreadyRegistered(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

.field final synthetic val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$3;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;)V

    return-void
.end method
