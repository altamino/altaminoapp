.class final Lcom/narvii/util/debug/LarkRobot$sendRequest$1;
.super Ljava/lang/Object;
.source "LarkRobot.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/LarkRobot;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/LarkRobot;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/LarkRobot;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    invoke-static {p1}, Lcom/narvii/util/debug/LarkRobot;->access$getNvContext$p(Lcom/narvii/util/debug/LarkRobot;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    invoke-static {v0}, Lcom/narvii/util/debug/LarkRobot;->access$getNvContext$p(Lcom/narvii/util/debug/LarkRobot;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/LarkRobot$sendRequest$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
