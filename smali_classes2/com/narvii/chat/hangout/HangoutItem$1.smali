.class Lcom/narvii/chat/hangout/HangoutItem$1;
.super Ljava/lang/Object;
.source "HangoutItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutItem;


# direct methods
.method constructor <init>(Lcom/narvii/chat/hangout/HangoutItem;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem$1;->this$0:Lcom/narvii/chat/hangout/HangoutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem$1;->this$0:Lcom/narvii/chat/hangout/HangoutItem;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
