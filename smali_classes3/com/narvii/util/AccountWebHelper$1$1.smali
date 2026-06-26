.class Lcom/narvii/util/AccountWebHelper$1$1;
.super Ljava/lang/Object;
.source "AccountWebHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/AccountWebHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/AccountWebHelper$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/AccountWebHelper$1;Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/util/AccountWebHelper$1$1;->this$1:Lcom/narvii/util/AccountWebHelper$1;

    iput-object p2, p0, Lcom/narvii/util/AccountWebHelper$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/narvii/util/AccountWebHelper$1$1;->this$1:Lcom/narvii/util/AccountWebHelper$1;

    iget-object v0, v0, Lcom/narvii/util/AccountWebHelper$1;->val$callback:Lcom/narvii/util/Callback;

    iget-object v1, p0, Lcom/narvii/util/AccountWebHelper$1$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
