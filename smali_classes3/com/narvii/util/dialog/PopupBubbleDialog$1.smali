.class Lcom/narvii/util/dialog/PopupBubbleDialog$1;
.super Ljava/lang/Object;
.source "PopupBubbleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/PopupBubbleDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/PopupBubbleDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/PopupBubbleDialog;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog$1;->this$0:Lcom/narvii/util/dialog/PopupBubbleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog$1;->this$0:Lcom/narvii/util/dialog/PopupBubbleDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
