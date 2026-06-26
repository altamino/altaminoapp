.class Lcom/narvii/chat/ChatThreadUserOperationHelper$5;
.super Ljava/lang/Object;
.source "ChatThreadUserOperationHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Landroid/widget/CheckBox;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;->this$0:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iput-object p2, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/narvii/chat/ChatThreadUserOperationHelper$5;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
