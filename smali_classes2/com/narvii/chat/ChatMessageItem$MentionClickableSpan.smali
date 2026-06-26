.class public Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "ChatMessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatMessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MentionClickableSpan"
.end annotation


# instance fields
.field private listener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

.field private mentionedColor:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->uid:Ljava/lang/String;

    .line 389
    iput p2, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->mentionedColor:I

    .line 390
    iput-object p3, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->listener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->listener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->uid:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;->onMentionedUserClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 402
    iget v0, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->mentionedColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
