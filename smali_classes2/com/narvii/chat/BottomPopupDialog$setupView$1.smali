.class final Lcom/narvii/chat/BottomPopupDialog$setupView$1;
.super Ljava/lang/Object;
.source "BottomPopupDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/BottomPopupDialog;->setupView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/BottomPopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/BottomPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/BottomPopupDialog$setupView$1;->this$0:Lcom/narvii/chat/BottomPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/narvii/chat/BottomPopupDialog$setupView$1;->this$0:Lcom/narvii/chat/BottomPopupDialog;

    invoke-virtual {p1}, Lcom/narvii/chat/BottomPopupDialog;->dismiss()V

    return-void
.end method
