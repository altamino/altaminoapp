.class Lcom/narvii/monetization/store/StoreItemGetterDialog$1;
.super Ljava/lang/Object;
.source "StoreItemGetterDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/StoreItemGetterDialog;->autoDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemGetterDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemGetterDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;->this$0:Lcom/narvii/monetization/store/StoreItemGetterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemGetterDialog$1;->this$0:Lcom/narvii/monetization/store/StoreItemGetterDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
