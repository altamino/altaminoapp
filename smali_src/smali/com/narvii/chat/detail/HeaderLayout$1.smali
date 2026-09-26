.class Lcom/narvii/chat/detail/HeaderLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/HeaderLayout;->setThread(Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/HeaderLayout;

.field final synthetic val$finalAuthor:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/HeaderLayout;Lcom/narvii/model/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout$1;->this$0:Lcom/narvii/chat/detail/HeaderLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/HeaderLayout$1;->val$finalAuthor:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout$1;->this$0:Lcom/narvii/chat/detail/HeaderLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/detail/HeaderLayout;->userClickListener:Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout$1;->val$finalAuthor:Lcom/narvii/model/User;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;->onUserClicked(Lcom/narvii/model/User;)V

    .line 12
    :cond_0
    return-void
.end method
