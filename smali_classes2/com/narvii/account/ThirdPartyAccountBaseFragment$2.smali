.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;
.super Ljava/lang/Object;
.source "ThirdPartyAccountBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment;->finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

.field final synthetic val$thirdPartSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;->val$thirdPartSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment;

    iget-object p2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$2;->val$thirdPartSecret:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->access$000(Lcom/narvii/account/ThirdPartyAccountBaseFragment;Ljava/lang/String;)V

    return-void
.end method
