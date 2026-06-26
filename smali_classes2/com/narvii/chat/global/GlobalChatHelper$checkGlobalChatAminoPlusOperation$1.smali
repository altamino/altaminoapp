.class final Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$checkGlobalChatAminoPlusOperation$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
