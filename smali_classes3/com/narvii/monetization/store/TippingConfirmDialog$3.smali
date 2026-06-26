.class Lcom/narvii/monetization/store/TippingConfirmDialog$3;
.super Ljava/lang/Object;
.source "TippingConfirmDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Tippable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$3;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$3;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$302(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
