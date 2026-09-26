.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;->val$alertDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$4;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->q(Lcom/narvii/account/ThirdPartyAccountBaseFragment;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->t(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    .line 15
    return-void
.end method
