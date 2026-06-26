.class Lcom/narvii/flag/resolve/FlagResolveBar$5;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisableRequest(ILjava/lang/String;)V
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

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$reasonType:I


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iput p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->val$reasonType:I

    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 262
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->val$reasonType:I

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$5;->val$message:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$600(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
