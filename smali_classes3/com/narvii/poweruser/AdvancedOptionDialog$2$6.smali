.class Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$2;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$2;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
