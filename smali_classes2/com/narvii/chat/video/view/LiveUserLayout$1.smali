.class Lcom/narvii/chat/video/view/LiveUserLayout$1;
.super Ljava/lang/Object;
.source "LiveUserLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/view/LiveUserLayout;->setClickListener(Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveUserLayout;

.field final synthetic val$clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/view/LiveUserLayout;Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout$1;->this$0:Lcom/narvii/chat/video/view/LiveUserLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/view/LiveUserLayout$1;->val$clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserLayout$1;->val$clickListener:Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/narvii/chat/video/view/LiveUserLayout$ClickListener;->onClickWholeLayout()V

    :cond_0
    return-void
.end method
