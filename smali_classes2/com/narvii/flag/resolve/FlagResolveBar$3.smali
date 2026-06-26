.class Lcom/narvii/flag/resolve/FlagResolveBar$3;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->keep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$3;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$3;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
