.class Lcom/narvii/pushservice/FCMService$1;
.super Ljava/lang/Object;
.source "FCMService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/FCMService;->onNewToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/FCMService;

.field final synthetic val$blocking:Lcom/narvii/util/BlockingItem;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/FCMService;Lcom/narvii/util/BlockingItem;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/pushservice/FCMService$1;->this$0:Lcom/narvii/pushservice/FCMService;

    iput-object p2, p0, Lcom/narvii/pushservice/FCMService$1;->val$blocking:Lcom/narvii/util/BlockingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/pushservice/FCMService$1;->val$blocking:Lcom/narvii/util/BlockingItem;

    invoke-virtual {v0, p1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/FCMService$1;->call(Landroid/os/Bundle;)V

    return-void
.end method
