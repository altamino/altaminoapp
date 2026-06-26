.class Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$22;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$22;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$22$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$22;

    iget-object v1, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$22;->val$message:Lcom/narvii/model/ChatMessage;

    invoke-static {v1, v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V

    return-void
.end method
