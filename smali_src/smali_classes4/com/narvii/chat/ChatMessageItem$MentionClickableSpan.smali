.class public Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;
.super Lcom/narvii/util/text/TouchableSpan;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->uid:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->mentionedColor:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->listener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->listener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->uid:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;->onMentionedUserClicked(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;->mentionedColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method
