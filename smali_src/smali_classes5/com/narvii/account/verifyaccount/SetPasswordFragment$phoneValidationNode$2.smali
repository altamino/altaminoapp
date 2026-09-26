.class final Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/SetPasswordFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4

    .line 2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    const-string v2, "identity"

    .line 3
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$getPhone(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "type"

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "level"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "last_verify_code"

    .line 7
    invoke-virtual {v1, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "code"

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    const-string v1, "data"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$phoneValidationNode$2;->invoke()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method
