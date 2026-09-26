.class Lcom/narvii/util/dialog/CheckDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/CheckDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/CheckDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/dialog/CheckDialog;->a(Lcom/narvii/util/dialog/CheckDialog;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 22
    :cond_0
    return-void
.end method
