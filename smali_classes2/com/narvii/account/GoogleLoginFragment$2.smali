.class Lcom/narvii/account/GoogleLoginFragment$2;
.super Ljava/lang/Object;
.source "GoogleLoginFragment.java"

# interfaces
.implements Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/GoogleLoginFragment;->queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/GoogleLoginFragment;

.field final synthetic val$callBack:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;


# direct methods
.method constructor <init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    iput-object p2, p0, Lcom/narvii/account/GoogleLoginFragment$2;->val$callBack:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    invoke-virtual {v0}, Lcom/narvii/account/AccountBaseFragment;->cancelSubmit()V

    .line 318
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment$2;->val$callBack:Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;

    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    iget-object v1, v1, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
