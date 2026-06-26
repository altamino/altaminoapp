.class Lcom/narvii/flag/resolve/FlagResolveBar$11;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->messageMember(Lcom/narvii/model/NVObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$11;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$11;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 427
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$11;->call(Landroid/content/Intent;)V

    return-void
.end method
