.class final Lcom/narvii/chat/ChatReplyLayout$bind$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lw7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $res:I

.field final synthetic this$0:Lcom/narvii/chat/ChatReplyLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatReplyLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatReplyLayout$bind$1;->this$0:Lcom/narvii/chat/ChatReplyLayout;

    iput p2, p0, Lcom/narvii/chat/ChatReplyLayout$bind$1;->$res:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout$bind$1;->this$0:Lcom/narvii/chat/ChatReplyLayout;

    iget v1, p0, Lcom/narvii/chat/ChatReplyLayout$bind$1;->$res:I

    .line 1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout$bind$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
