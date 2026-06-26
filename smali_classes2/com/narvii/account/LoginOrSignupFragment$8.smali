.class Lcom/narvii/account/LoginOrSignupFragment$8;
.super Ljava/lang/Object;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->clickLogin()V
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

    .line 565
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$8;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 568
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$8;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->cancelLogin:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "EngagementArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
