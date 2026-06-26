.class Lcom/narvii/chat/ChatDetailDialog$1;
.super Ljava/lang/Object;
.source "ChatDetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatDetailDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatDetailDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatDetailDialog;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/chat/ChatDetailDialog$1;->this$0:Lcom/narvii/chat/ChatDetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/narvii/chat/ChatDetailDialog$1;->this$0:Lcom/narvii/chat/ChatDetailDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
