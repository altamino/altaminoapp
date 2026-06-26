.class Lcom/narvii/onlinestatus/UserDialog$1;
.super Ljava/lang/Object;
.source "UserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$1;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$1;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-static {p1}, Lcom/narvii/onlinestatus/UserDialog;->access$000(Lcom/narvii/onlinestatus/UserDialog;)V

    return-void
.end method
