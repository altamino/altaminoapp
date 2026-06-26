.class Lcom/narvii/account/LoginOrSignupFragment$9;
.super Ljava/lang/Object;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
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

    .line 742
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$9;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment$9;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-static {v0}, Lcom/narvii/account/LoginOrSignupFragment;->access$000(Lcom/narvii/account/LoginOrSignupFragment;)V

    return-void
.end method
