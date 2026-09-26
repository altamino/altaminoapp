.class final Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;
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

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$getOldIdentity(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "identity"

    .line 4
    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "type"

    .line 5
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$getOldIdentityType(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$getOldIdentityType(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)I

    move-result v0

    const-string v3, "level"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    .line 7
    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v3, "code"

    .line 10
    invoke-static {v1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$getOldCode(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    const-string v1, "data"

    .line 12
    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/verifyaccount/SetPasswordFragment$oldIdentityValidationNode$2;->invoke()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method
