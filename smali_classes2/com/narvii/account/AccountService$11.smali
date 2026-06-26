.class Lcom/narvii/account/AccountService$11;
.super Ljava/lang/Thread;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/narvii/account/AccountService$11;->this$0:Lcom/narvii/account/AccountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/narvii/account/AccountService$11;->this$0:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->crossAppsCheck()V

    return-void
.end method
